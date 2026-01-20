# Oh My OpenCode (한국어 버전)

> OpenCode를 더욱 강력하게 만들어주는 플러그인

[![GitHub Release](https://img.shields.io/github/v/release/code-yeongyu/oh-my-opencode?color=369eff&labelColor=black&logo=github&style=flat-square)](https://github.com/code-yeongyu/oh-my-opencode/releases)
[![License](https://img.shields.io/badge/license-SUL--1.0-white?labelColor=black&style=flat-square)](https://github.com/code-yeongyu/oh-my-opencode/blob/master/LICENSE.md)

[English](README.md) | **한국어** | [日本語](README.ja.md) | [简体中文](README.zh-cn.md)

## 🎯 이 저장소는?

이 저장소는 [code-yeongyu/oh-my-opencode](https://github.com/code-yeongyu/oh-my-opencode)의 포크로, 한국어 사용자를 위한 추가 문서와 쉬운 설정 방법을 제공합니다.

## ⚡ 빠른 시작 (30초만에 시작하기)

### 방법 1: 자동 설치 스크립트 (가장 쉬움!)

```bash
# 저장소 클론
git clone https://github.com/jealim0923-art/oh-my-opencode.git
cd oh-my-opencode

# 자동 설치 실행
./quick-start.sh
```

### 방법 2: AI 에이전트에게 맡기기 (권장)

Claude Code, Cursor, 또는 다른 AI 에이전트에게 다음과 같이 요청하세요:

```
Oh My OpenCode를 설치하고 설정해줘.
한국어 가이드는 여기 있어:
https://raw.githubusercontent.com/jealim0923-art/oh-my-opencode/refs/heads/korean-docs/SETUP_GUIDE_KR.md
```

## 📖 문서

- **[한국어 설치 및 사용 가이드](SETUP_GUIDE_KR.md)** ⭐ 시작하기 좋은 문서
- [원본 영문 README](README.md)
- [기능 상세 설명](docs/features.md)
- [설정 가이드](docs/configurations.md)

## 🚀 왜 Oh My OpenCode인가?

### OpenCode만 쓰기엔 아쉬웠나요?

Oh My OpenCode는 다음을 제공합니다:

✅ **멀티 모델 오케스트레이션**
- GPT, Claude, Gemini를 작업별로 최적 활용
- 각 모델의 강점을 살린 전문 에이전트

✅ **병렬 처리**
- 여러 에이전트가 동시에 작업
- 코드베이스 탐색, 문서 검색을 백그라운드에서 실행

✅ **자동화된 워크플로우**
- 작업이 완료될 때까지 자동 실행
- Todo 추적 및 강제 완료

✅ **고급 코드 도구**
- LSP 통합으로 안전한 리팩토링
- AST 기반 코드 분석

✅ **깔끔한 코드**
- 불필요한 주석 자동 제거
- AI가 생성한 코드를 사람이 작성한 것처럼

### 🪄 마법의 키워드: `ultrawork` (또는 `ulw`)

프롬프트에 `ultrawork` 또는 `ulw`만 추가하면:

```
이 프로젝트의 모든 버그를 찾아서 수정해줘 ulw
```

자동으로:
1. 🔍 코드베이스 전체를 병렬로 탐색
2. 🤖 여러 전문 에이전트가 협업
3. 🔧 LSP 도구로 안전하게 리팩토링
4. ✅ 작업이 완료될 때까지 실행
5. 📝 깔끔한 코드로 정리

## 👥 전문 에이전트들

Oh My OpenCode는 여러 전문화된 AI 에이전트를 제공합니다:

| 에이전트 | 역할 | 모델 | 사용 예시 |
|---------|------|------|----------|
| **Sisyphus** | 메인 조율자 | Opus 4.5 High | 자동 활성화 |
| **Oracle** | 디버깅 전문가 | GPT 5.2 Medium | `@oracle 이 버그 분석해줘` |
| **Librarian** | 문서 전문가 | Claude Sonnet 4.5 | `@librarian React 문서 찾아줘` |
| **Frontend** | UI/UX 개발 | Gemini 3 Pro | `@frontend 로그인 페이지 만들어줘` |
| **Explore** | 빠른 검색 | Grok Code | `@explore useState 찾아줘` |

## 🔧 주요 기능

### 1. 멀티 에이전트 시스템
```
프로젝트를 분석하고 개선점을 찾아줘 ulw
```
→ 여러 에이전트가 병렬로 코드를 분석하고 개선안을 제시

### 2. 자동 문서 검색
```
@librarian Next.js App Router의 최신 문서를 찾아줘
```
→ 공식 문서와 GitHub 코드 예제를 자동으로 검색

### 3. 스마트 리팩토링
```
이 함수를 더 효율적으로 만들어줘
```
→ LSP를 사용해 안전하게 코드 구조 개선

### 4. UI/UX 자동화
```
@frontend 모던한 대시보드 레이아웃을 만들어줘
```
→ 프론트엔드 전문 에이전트가 UI 컴포넌트 생성

### 5. 작업 완료 보장
```
이 프로젝트의 ESLint 경고를 모두 수정해줘 ulw
```
→ Todo Enforcer가 모든 경고를 수정할 때까지 추적

## 📦 설치 전제 조건

- Node.js 18.0 이상
- [OpenCode](https://github.com/sst/opencode) 설치
- ChatGPT, Claude, Gemini 중 최소 하나의 API 키

## 🎨 사용 예시

### 예시 1: 전체 프로젝트 리팩토링

```
이 프로젝트의 코드 품질을 개선하고 싶어.
- TypeScript 타입을 더 엄격하게
- 중복 코드 제거
- 성능 최적화
ulw
```

### 예시 2: 기능 추가

```
사용자 인증 시스템을 추가해줘.
- JWT 기반
- 이메일/비밀번호 로그인
- 소셜 로그인 (Google, GitHub)
ulw
```

### 예시 3: 버그 수정

```
@oracle 
이 컴포넌트에서 메모리 누수가 발생하는 것 같아.
원인을 찾아서 수정해줘.
```

### 예시 4: 문서 작성

```
@librarian
이 API의 사용 방법을 설명하는 README를 작성해줘.
다른 유명한 라이브러리의 README를 참고해서.
```

## ⚙️ 설정 커스터마이징

프로젝트 루트에 `.opencode/oh-my-opencode.json` 파일 생성:

```json
{
  "agents": {
    "sisyphus": {
      "model": "claude-opus-4.5-high",
      "temperature": 0.7
    },
    "oracle": {
      "model": "gpt-5.2-medium",
      "temperature": 0.5
    }
  },
  "experimental": {
    "aggressive_truncation": true,
    "auto_resume": true,
    "ralph_loop": true
  }
}
```

더 자세한 설정은 [SETUP_GUIDE_KR.md](SETUP_GUIDE_KR.md)를 참고하세요.

## 🐛 문제 해결

### 일반적인 문제들

1. **플러그인이 로드되지 않음**
   ```bash
   # 설정 파일 확인
   cat ~/.config/opencode/opencode.json
   ```

2. **에이전트가 응답하지 않음**
   - API 키가 올바른지 확인
   - 모델 이름이 정확한지 확인

3. **성능이 느림**
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

자세한 문제 해결은 [SETUP_GUIDE_KR.md](SETUP_GUIDE_KR.md#문제-해결) 참고

## 📚 추가 학습 자료

- [Ultrawork Manifesto](docs/ultrawork-manifesto.md) - 프로젝트 철학
- [전체 기능 목록](docs/features.md) - 모든 기능 상세 설명
- [고급 설정](docs/configurations.md) - 상세 설정 가이드

## 💬 커뮤니티

- **Discord**: [커뮤니티 참여](https://discord.gg/PUwSMR9XNk)
- **X (Twitter)**: [@justsisyphus](https://x.com/justsisyphus)
- **Issues**: [문제 보고](https://github.com/jealim0923-art/oh-my-opencode/issues)

## 🙏 기여하기

기여는 언제나 환영합니다!

1. 저장소 Fork
2. Feature 브랜치 생성 (`git checkout -b feature/기능명`)
3. 변경사항 커밋 (`git commit -m 'Add: 새로운 기능'`)
4. 브랜치에 Push (`git push origin feature/기능명`)
5. Pull Request 생성

## ⭐ 원작자에게 스타 주기

이 프로젝트가 유용하다면 [원본 저장소](https://github.com/code-yeongyu/oh-my-opencode)에도 스타를 눌러주세요!

## 📄 라이센스

이 프로젝트는 SUL-1.0 라이센스 하에 배포됩니다.
원본 프로젝트: [code-yeongyu/oh-my-opencode](https://github.com/code-yeongyu/oh-my-opencode)

---

**즐거운 코딩 되세요! 🚀**

질문이나 제안사항이 있으시면 [Issues](https://github.com/jealim0923-art/oh-my-opencode/issues)에 남겨주세요.
