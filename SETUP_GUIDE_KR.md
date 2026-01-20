# Oh My OpenCode 설치 및 사용 가이드 (한국어)

> 이 문서는 oh-my-opencode를 쉽게 설치하고 사용할 수 있도록 도와주는 한국어 가이드입니다.

## 📋 목차
- [개요](#개요)
- [빠른 시작](#빠른-시작)
- [설치 방법](#설치-방법)
- [기본 사용법](#기본-사용법)
- [주요 기능](#주요-기능)
- [설정 방법](#설정-방법)
- [문제 해결](#문제-해결)

## 🎯 개요

**Oh My OpenCode**는 OpenCode를 더욱 강력하게 만들어주는 플러그인입니다.

### 왜 사용해야 하나요?

- ✅ **여러 AI 모델을 동시에 활용**: GPT, Claude, Gemini 등을 작업별로 최적화
- ✅ **자동화된 워크플로우**: 백그라운드 에이전트가 병렬로 작업 수행
- ✅ **강력한 코드 분석 도구**: LSP, AST 기반 리팩토링
- ✅ **작업 완료 보장**: Todo Enforcer가 작업이 완료될 때까지 추적
- ✅ **깔끔한 코드**: 불필요한 주석 자동 제거

## 🚀 빠른 시작

### 1단계: 전제 조건 확인

```bash
# Node.js 설치 확인 (18.0 이상 필요)
node --version

# OpenCode 설치 확인
opencode --version
```

### 2단계: Oh My OpenCode 설치

가장 쉬운 방법은 Claude Code나 다른 AI 에이전트에게 설치를 요청하는 것입니다:

```
Install and configure oh-my-opencode by following the instructions here:
https://raw.githubusercontent.com/code-yeongyu/oh-my-opencode/refs/heads/master/docs/guide/installation.md
```

### 3단계: 설정 파일 생성

OpenCode 설정에 플러그인 추가:

```bash
# ~/.config/opencode/opencode.json 파일 편집
{
  "plugin": ["oh-my-opencode"],
  // ... 기타 설정
}
```

## 📦 설치 방법

### 자동 설치 (권장)

AI 에이전트를 사용하여 설치하는 것이 가장 안전합니다:

1. **Claude Code나 Cursor를 엽니다**
2. **다음 프롬프트를 입력합니다:**

```
Oh My OpenCode를 설치하고 설정해줘. 
설치 가이드는 여기 있어:
https://raw.githubusercontent.com/code-yeongyu/oh-my-opencode/refs/heads/master/docs/guide/installation.md
```

### 수동 설치

1. **OpenCode 설정 파일 편집:**

```bash
# macOS/Linux
nano ~/.config/opencode/opencode.json

# Windows
notepad %USERPROFILE%\.config\opencode\opencode.json
```

2. **플러그인 추가:**

```json
{
  "plugin": ["oh-my-opencode"]
}
```

3. **설정 파일 생성 (선택사항):**

프로젝트별 설정: `.opencode/oh-my-opencode.json`
전역 설정: `~/.config/opencode/oh-my-opencode.json`

## 💡 기본 사용법

### 마법의 키워드: `ultrawork` (또는 `ulw`)

프롬프트에 `ultrawork` 또는 `ulw`만 포함하면 모든 고급 기능이 자동으로 활성화됩니다:

```
이 프로젝트의 버그를 모두 수정해줘 ulw
```

이것만으로도:
- 병렬 에이전트들이 작업 분석
- 백그라운드에서 코드베이스 탐색
- 작업이 완료될 때까지 자동 실행
- LSP 도구를 사용한 안전한 리팩토링

### 주요 에이전트들

Oh My OpenCode는 여러 전문 에이전트를 제공합니다:

1. **Sisyphus (메인 에이전트)**
   - 역할: 전체 작업 조율
   - 모델: Opus 4.5 High
   - 사용: 자동으로 활성화됨

2. **Oracle (디버깅 전문가)**
   - 역할: 설계, 디버깅
   - 모델: GPT 5.2 Medium
   - 사용: `@oracle 이 버그 분석해줘`

3. **Librarian (문서 전문가)**
   - 역할: 공식 문서, 오픈소스 검색
   - 모델: Claude Sonnet 4.5
   - 사용: `@librarian React 최신 문서 찾아줘`

4. **Frontend Engineer**
   - 역할: UI/UX 개발
   - 모델: Gemini 3 Pro
   - 사용: `@frontend 로그인 페이지 만들어줘`

5. **Explore (빠른 검색)**
   - 역할: 코드베이스 빠른 탐색
   - 모델: Grok Code
   - 사용: `@explore useState가 어디에 쓰였는지 찾아줘`

## ⚙️ 설정 방법

### 기본 설정 파일 생성

`.opencode/oh-my-opencode.json` 파일을 생성:

```json
{
  "agents": {
    "sisyphus": {
      "model": "claude-opus-4.5-high",
      "temperature": 0.7
    }
  },
  "experimental": {
    "aggressive_truncation": true,
    "auto_resume": true
  }
}
```

### 에이전트 모델 변경

특정 에이전트의 모델을 변경하려면:

```json
{
  "agents": {
    "oracle": {
      "model": "gpt-4.5-turbo",
      "temperature": 0.5
    },
    "frontend": {
      "model": "gemini-3-pro",
      "temperature": 0.8
    }
  }
}
```

### MCP (Model Context Protocol) 설정

내장된 MCP들:

- **websearch**: Exa를 사용한 웹 검색
- **context7**: 공식 문서 검색
- **grep_app**: GitHub 코드 검색

MCP 비활성화:

```json
{
  "disabled_mcps": ["websearch"]
}
```

### 백그라운드 작업 제한

동시 실행 작업 수 제한:

```json
{
  "background_tasks": {
    "max_concurrent_tasks_per_provider": 3,
    "max_concurrent_tasks_per_model": 2
  }
}
```

## 🔧 고급 기능

### LSP 통합

자동으로 활성화되는 LSP 기능:

- 코드 리팩토링
- 심볼 이름 변경
- 진단 정보
- 정의로 이동

### Git Master

자동 커밋 관리:

```json
{
  "skills": {
    "git-master": {
      "enabled": true
    }
  }
}
```

### Ralph Loop

작업이 완료될 때까지 반복:

```json
{
  "experimental": {
    "ralph_loop": true
  }
}
```

### Comment Checker

불필요한 주석 제거:

```json
{
  "hooks": {
    "disabled_hooks": []
  }
}
```

## 🐛 문제 해결

### 설치 오류

**문제**: `opencode --version` 실행 시 플러그인이 로드되지 않음

**해결**:
```bash
# 설정 파일 경로 확인
cat ~/.config/opencode/opencode.json

# 플러그인 배열에 "oh-my-opencode"가 있는지 확인
```

### 에이전트가 응답하지 않음

**문제**: 에이전트 호출 시 응답 없음

**해결**:
1. API 키 확인
2. 모델 이름이 올바른지 확인
3. 로그 확인: `~/.config/opencode/logs/`

### 성능 문제

**문제**: 느린 응답 속도

**해결**:
```json
{
  "experimental": {
    "aggressive_truncation": true
  },
  "background_tasks": {
    "max_concurrent_tasks_per_provider": 2
  }
}
```

### 워크플로우 권한 오류

**문제**: GitHub Actions workflow 푸시 시 권한 오류

**해결**:
웹 브라우저에서 GitHub 저장소 설정으로 이동:
1. Settings > Actions > General
2. "Read and write permissions" 활성화
3. 다시 푸시

## 📚 추가 자료

- [공식 문서](https://github.com/code-yeongyu/oh-my-opencode)
- [기능 상세 설명](docs/features.md)
- [설정 가이드](docs/configurations.md)
- [Ultrawork Manifesto](docs/ultrawork-manifesto.md)

## 💬 커뮤니티

- [Discord](https://discord.gg/PUwSMR9XNk)
- [X (Twitter)](https://x.com/justsisyphus)
- [GitHub Issues](https://github.com/code-yeongyu/oh-my-opencode/issues)

## 🙏 기여하기

기여는 언제나 환영합니다!

1. 이 저장소를 Fork
2. Feature 브랜치 생성 (`git checkout -b feature/AmazingFeature`)
3. 변경사항 커밋 (`git commit -m 'Add some AmazingFeature'`)
4. 브랜치에 Push (`git push origin feature/AmazingFeature`)
5. Pull Request 생성

## 📄 라이센스

이 프로젝트는 SUL-1.0 라이센스 하에 배포됩니다.

---

**즐거운 코딩 되세요! 🚀**

질문이나 문제가 있으시면 [Issues](https://github.com/jealim0923-art/oh-my-opencode/issues)에 남겨주세요.
