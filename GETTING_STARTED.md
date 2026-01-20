# 🎉 Oh My OpenCode - 쉽게 시작하기

## ✅ 완료된 작업

당신의 GitHub 저장소에 oh-my-opencode가 성공적으로 푸시되었습니다!

**저장소 주소**: https://github.com/jealim0923-art/oh-my-opencode

## 📦 포함된 내용

### 1. 원본 프로젝트 전체
- 모든 소스 코드
- 문서 및 설정 파일
- 라이센스 및 기여 가이드

### 2. 추가된 한국어 자료
- ✅ **SETUP_GUIDE_KR.md** - 한국어 설치 및 사용 가이드
- ✅ **README.ko.md** - 한국어 README
- ✅ **quick-start.sh** - 자동 설치 스크립트

## 🚀 이제 어떻게 사용하나요?

### 방법 1: 자동 설치 스크립트 사용 (가장 쉬움!)

```bash
# 저장소 클론
git clone https://github.com/jealim0923-art/oh-my-opencode.git
cd oh-my-opencode

# 자동 설치 실행
chmod +x quick-start.sh
./quick-start.sh
```

### 방법 2: AI 에이전트에게 설치 맡기기

Claude Code, Cursor, 또는 다른 AI 코딩 도구에서 다음 프롬프트를 입력하세요:

```
Oh My OpenCode를 설치하고 설정해줘.
가이드는 여기 있어:
https://raw.githubusercontent.com/jealim0923-art/oh-my-opencode/refs/heads/korean-docs/SETUP_GUIDE_KR.md
```

### 방법 3: 수동 설치

1. **OpenCode 설정 파일 편집**
   ```bash
   # macOS/Linux
   nano ~/.config/opencode/opencode.json
   ```

2. **플러그인 추가**
   ```json
   {
     "plugin": ["oh-my-opencode"]
   }
   ```

3. **OpenCode 재시작**

## 📖 문서 읽기

### 시작 가이드
- [한국어 설치 가이드](https://github.com/jealim0923-art/oh-my-opencode/blob/korean-docs/SETUP_GUIDE_KR.md)
- [한국어 README](https://github.com/jealim0923-art/oh-my-opencode/blob/korean-docs/README.ko.md)

### 원본 문서
- [영문 README](https://github.com/jealim0923-art/oh-my-opencode/blob/korean-docs/README.md)
- [기능 설명](https://github.com/jealim0923-art/oh-my-opencode/blob/korean-docs/docs/features.md)
- [설정 가이드](https://github.com/jealim0923-art/oh-my-opencode/blob/korean-docs/docs/configurations.md)

## 💡 빠른 사용 팁

### 마법의 키워드: `ultrawork` (또는 `ulw`)

프롬프트에 이 키워드만 추가하면 모든 고급 기능이 자동으로 활성화됩니다:

```
이 프로젝트의 버그를 찾아서 수정해줘 ulw
```

### 전문 에이전트 호출

```
@oracle 이 코드를 분석해줘        # 디버깅 전문가
@librarian React 문서 찾아줘       # 문서 검색 전문가
@frontend 로그인 페이지 만들어줘   # UI/UX 전문가
@explore useState가 어디 쓰였는지 찾아줘  # 빠른 코드 검색
```

## 🔧 다음 단계

### 1. 기본 설정 파일 생성

프로젝트별 설정을 위해 `.opencode/oh-my-opencode.json` 파일을 생성하세요:

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
    "auto_resume": true,
    "ralph_loop": true
  }
}
```

### 2. API 키 설정

사용하려는 AI 모델의 API 키를 설정하세요:
- OpenAI (GPT)
- Anthropic (Claude)
- Google (Gemini)

### 3. 첫 프롬프트 시도

```
안녕! 프로젝트 구조를 분석하고 개선점을 찾아줘 ulw
```

## 🐛 문제가 생기면?

1. **설치 문서 확인**
   - [SETUP_GUIDE_KR.md](https://github.com/jealim0923-art/oh-my-opencode/blob/korean-docs/SETUP_GUIDE_KR.md) 의 문제 해결 섹션

2. **이슈 생성**
   - https://github.com/jealim0923-art/oh-my-opencode/issues

3. **커뮤니티 참여**
   - Discord: https://discord.gg/PUwSMR9XNk

## 🎓 학습 자료

### 초보자용
1. [한국어 설치 가이드](https://github.com/jealim0923-art/oh-my-opencode/blob/korean-docs/SETUP_GUIDE_KR.md)
2. [한국어 README](https://github.com/jealim0923-art/oh-my-opencode/blob/korean-docs/README.ko.md)

### 고급 사용자용
1. [전체 기능 목록](https://github.com/jealim0923-art/oh-my-opencode/blob/korean-docs/docs/features.md)
2. [상세 설정 가이드](https://github.com/jealim0923-art/oh-my-opencode/blob/korean-docs/docs/configurations.md)
3. [Ultrawork Manifesto](https://github.com/jealim0923-art/oh-my-opencode/blob/korean-docs/docs/ultrawork-manifesto.md)

## 🌟 유용한 예제

### 프로젝트 리팩토링
```
이 프로젝트를 TypeScript로 마이그레이션하고 
코드 품질을 개선해줘. 
- 타입 안정성 향상
- 중복 코드 제거
- 성능 최적화
ulw
```

### 기능 추가
```
JWT 기반 인증 시스템을 추가해줘.
- 로그인/회원가입
- 토큰 갱신
- 권한 관리
ulw
```

### 버그 수정
```
@oracle 
이 컴포넌트에서 메모리 누수가 발생해.
원인을 찾아서 수정해줘.
```

### UI 개선
```
@frontend
이 페이지를 모던한 디자인으로 개선해줘.
- 다크 모드 지원
- 반응형 디자인
- 애니메이션 효과
```

## 📞 연락처

- **이슈**: https://github.com/jealim0923-art/oh-my-opencode/issues
- **원본 프로젝트**: https://github.com/code-yeongyu/oh-my-opencode
- **Discord**: https://discord.gg/PUwSMR9XNk

---

**즐거운 코딩 되세요! 🚀**

이 오픈소스를 통해 생산성이 크게 향상되길 바랍니다!
