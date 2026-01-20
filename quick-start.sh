#!/bin/bash

# Oh My OpenCode 빠른 설치 스크립트
# Quick installation script for Oh My OpenCode

set -e

echo "=========================================="
echo "  Oh My OpenCode 설치 스크립트"
echo "  Quick Setup Script"
echo "=========================================="
echo ""

# 색상 코드
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# 진행 상황 출력 함수
print_status() {
    echo -e "${BLUE}[*]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[✓]${NC} $1"
}

print_error() {
    echo -e "${RED}[✗]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[!]${NC} $1"
}

# Node.js 확인
print_status "Node.js 버전 확인 중..."
if command -v node &> /dev/null; then
    NODE_VERSION=$(node --version)
    print_success "Node.js 설치됨: $NODE_VERSION"
else
    print_error "Node.js가 설치되어 있지 않습니다."
    echo "Node.js 18.0 이상을 설치해주세요: https://nodejs.org/"
    exit 1
fi

# OpenCode 확인
print_status "OpenCode 확인 중..."
if command -v opencode &> /dev/null; then
    OPENCODE_VERSION=$(opencode --version)
    print_success "OpenCode 설치됨: $OPENCODE_VERSION"
else
    print_error "OpenCode가 설치되어 있지 않습니다."
    echo "OpenCode를 먼저 설치해주세요: https://github.com/sst/opencode"
    exit 1
fi

# 설정 파일 경로
CONFIG_DIR="$HOME/.config/opencode"
CONFIG_FILE="$CONFIG_DIR/opencode.json"
PLUGIN_CONFIG="$CONFIG_DIR/oh-my-opencode.json"

# 설정 디렉토리 생성
print_status "설정 디렉토리 확인 중..."
if [ ! -d "$CONFIG_DIR" ]; then
    mkdir -p "$CONFIG_DIR"
    print_success "설정 디렉토리 생성됨: $CONFIG_DIR"
else
    print_success "설정 디렉토리 존재: $CONFIG_DIR"
fi

# OpenCode 설정 파일 확인 및 백업
print_status "OpenCode 설정 파일 확인 중..."
if [ -f "$CONFIG_FILE" ]; then
    # 백업 생성
    BACKUP_FILE="${CONFIG_FILE}.backup.$(date +%Y%m%d_%H%M%S)"
    cp "$CONFIG_FILE" "$BACKUP_FILE"
    print_success "기존 설정 파일 백업됨: $BACKUP_FILE"
    
    # plugin 배열에 oh-my-opencode 추가
    if grep -q "oh-my-opencode" "$CONFIG_FILE"; then
        print_warning "oh-my-opencode가 이미 설정에 포함되어 있습니다."
    else
        print_status "플러그인을 설정에 추가 중..."
        
        # jq가 설치되어 있으면 사용
        if command -v jq &> /dev/null; then
            TMP_FILE=$(mktemp)
            jq '.plugin += ["oh-my-opencode"]' "$CONFIG_FILE" > "$TMP_FILE"
            mv "$TMP_FILE" "$CONFIG_FILE"
            print_success "플러그인이 설정에 추가되었습니다."
        else
            print_warning "jq가 설치되어 있지 않습니다. 수동으로 플러그인을 추가해야 합니다."
            echo "다음 내용을 $CONFIG_FILE에 추가하세요:"
            echo '  "plugin": ["oh-my-opencode"]'
        fi
    fi
else
    # 새 설정 파일 생성
    print_status "새 OpenCode 설정 파일 생성 중..."
    cat > "$CONFIG_FILE" <<EOF
{
  "plugin": ["oh-my-opencode"]
}
EOF
    print_success "설정 파일 생성됨: $CONFIG_FILE"
fi

# Oh My OpenCode 기본 설정 파일 생성
print_status "Oh My OpenCode 설정 파일 생성 중..."
if [ ! -f "$PLUGIN_CONFIG" ]; then
    cat > "$PLUGIN_CONFIG" <<EOF
{
  "agents": {
    "sisyphus": {
      "model": "claude-opus-4.5-high",
      "temperature": 0.7
    },
    "oracle": {
      "model": "gpt-5.2-medium",
      "temperature": 0.5
    },
    "librarian": {
      "model": "claude-sonnet-4.5",
      "temperature": 0.3
    },
    "frontend": {
      "model": "gemini-3-pro",
      "temperature": 0.8
    },
    "explore": {
      "model": "grok-code",
      "temperature": 0.2
    }
  },
  "experimental": {
    "aggressive_truncation": true,
    "auto_resume": true,
    "ralph_loop": true
  },
  "background_tasks": {
    "max_concurrent_tasks_per_provider": 3,
    "max_concurrent_tasks_per_model": 2
  },
  "skills": {
    "git-master": {
      "enabled": true
    },
    "playwright": {
      "enabled": true
    }
  }
}
EOF
    print_success "기본 설정 파일 생성됨: $PLUGIN_CONFIG"
else
    print_warning "설정 파일이 이미 존재합니다: $PLUGIN_CONFIG"
    echo "기존 설정을 유지합니다."
fi

# 프로젝트별 설정 디렉토리 생성 (선택사항)
print_status "프로젝트별 설정 지원 안내..."
echo ""
echo "프로젝트별 설정을 사용하려면 프로젝트 루트에 다음 파일을 생성하세요:"
echo "  .opencode/oh-my-opencode.json"
echo ""

# 완료 메시지
echo ""
print_success "=========================================="
print_success "  설치가 완료되었습니다!"
print_success "=========================================="
echo ""
echo "다음 단계:"
echo ""
echo "1. OpenCode를 재시작하세요:"
echo "   ${GREEN}opencode${NC}"
echo ""
echo "2. 프롬프트에서 'ultrawork' 또는 'ulw' 키워드를 사용하세요:"
echo "   ${BLUE}이 프로젝트의 버그를 수정해줘 ulw${NC}"
echo ""
echo "3. 특정 에이전트를 호출하려면:"
echo "   ${BLUE}@oracle 이 코드를 분석해줘${NC}"
echo "   ${BLUE}@librarian React 최신 문서 찾아줘${NC}"
echo "   ${BLUE}@frontend 로그인 페이지 만들어줘${NC}"
echo ""
echo "4. 자세한 사용법은 다음 문서를 참조하세요:"
echo "   - 한국어 가이드: ${GREEN}SETUP_GUIDE_KR.md${NC}"
echo "   - 영문 README: ${GREEN}README.md${NC}"
echo ""
echo "문제가 발생하면 이슈를 등록해주세요:"
echo "  https://github.com/jealim0923-art/oh-my-opencode/issues"
echo ""
print_success "즐거운 코딩 되세요! 🚀"
