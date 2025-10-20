# 개발 환경 설정 및 실행 가이드

이 문서는 Jekyll 블로그 프로젝트(Chirpy 테마)의 개발 환경 설정과 로컬 서버 실행 방법을 안내합니다.

## 📋 목차

- [시스템 요구사항](#시스템-요구사항)
- [환경 설정](#환경-설정)
- [의존성 설치](#의존성-설치)
- [개발 서버 실행](#개발-서버-실행)
- [빌드 및 배포](#빌드-및-배포)
- [문제 해결](#문제-해결)
- [커밋 규칙](#커밋-규칙)

## 🖥️ 시스템 요구사항

### 필수 도구

- **Ruby**: 3.0 이상 (권장: 3.1+)
- **Node.js**: 14.0 이상 (권장: 18+)
- **npm**: Node.js와 함께 설치됨
- **Git**: 버전 관리

### macOS 환경

```bash
# Homebrew로 Ruby 설치
brew install ruby

# Node.js 설치
brew install node
```

## ⚙️ 환경 설정

### 1. Ruby 환경 설정

```bash
# Ruby 버전 확인
ruby --version

# Homebrew Ruby를 PATH에 추가 (~/.zshrc에 추가)
echo 'export PATH="/opt/homebrew/opt/ruby/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

### 2. Bundler 설치

```bash
gem install bundler
```

## 📦 의존성 설치

### 1. Ruby Gems 설치

```bash
# 프로젝트 루트 디렉토리에서 실행
bundle install

# 멀티스레드 문제 발생 시
bundle install --jobs 1
```

### 2. Node.js 패키지 설치

```bash
npm install
```

## 🚀 개발 서버 실행

### 방법 1: 스크립트 사용 (권장)

```bash
# Jekyll 서버만 실행
./tools/run.sh

# 프로덕션 모드로 실행
./tools/run.sh --production

# 호스트 변경
./tools/run.sh --host 0.0.0.0
```

### 방법 2: VS Code 작업 사용

VS Code에서 `Ctrl+Shift+P` → "Tasks: Run Task" → 다음 중 선택:

- **"Run Jekyll Server"**: Jekyll 서버만 실행
- **"Run Jekyll Server + Build JS (watch)"**: Jekyll + JavaScript 감시 모드
- **"Build JS (watch)"**: JavaScript 파일만 감시 모드

### 방법 3: 직접 명령어

```bash
# Jekyll 서버 실행
bundle exec jekyll serve --livereload

# JavaScript 감시 모드 (별도 터미널)
npm run watch:js
```

### 접속

서버 실행 후 브라우저에서 접속:
- **로컬**: http://localhost:4000
- **네트워크**: http://[IP주소]:4000 (호스트 변경 시)

## 🔧 빌드 및 배포

### 로컬 빌드

```bash
# Jekyll 사이트 빌드
bundle exec jekyll build

# CSS/JS 빌드
npm run build

# 전체 빌드
npm run build && bundle exec jekyll build
```

### GitHub Pages 배포

```bash
# 변경사항 커밋 후 푸시
git add .
git commit -m "feat: add new blog post"
git push origin main
```

GitHub Actions가 자동으로 빌드 및 배포를 수행합니다.

## 🛠️ 문제 해결

### Ruby 버전 문제

**문제**: `Ruby 3.0 이상 필요` 오류

**해결**:
```bash
# Homebrew로 최신 Ruby 설치
brew install ruby

# PATH 설정
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
```

### Bundle 설치 오류

**문제**: `bundle install` 시 deadlock 오류

**해결**:
```bash
bundle install --jobs 1
```

### GitHub Actions 빌드 실패

**문제**: Ubuntu 24.04 호환성 이슈

**해결**: `.github/workflows/jekyll.yml`에서 `ubuntu-22.04` 사용

### 이미지 경로 오류

**문제**: Jekyll 빌드 시 이미지를 찾을 수 없음

**해결**: 이미지 경로를 `/assets/img/`로 시작하는 절대 경로 사용

```markdown
❌ ![image](post/example.jpg)
✅ ![image](/assets/img/post/example.jpg)
```

## 📝 커밋 규칙

이 프로젝트는 **Conventional Commits** 규칙을 따릅니다:

### 커밋 메시지 형식

```
<type>: <description>

[optional body]

[optional footer]
```

### 타입 목록

- `feat`: 새로운 기능 추가
- `fix`: 버그 수정  
- `docs`: 문서 변경
- `style`: 코드 스타일 변경 (포맷팅, 세미콜론 등)
- `refactor`: 코드 리팩토링
- `perf`: 성능 개선
- `test`: 테스트 추가/수정
- `chore`: 빌드 과정이나 보조 도구 변경

### 예시

```bash
git commit -m "feat: add SPA vs MPA comparison article"
git commit -m "fix: resolve image path issues in blog posts"
git commit -m "docs: update development setup guide"
git commit -m "style: format code with prettier"
```

## 📁 프로젝트 구조

```
dayeon5952.github.io/
├── _config.yml              # Jekyll 설정
├── _posts/                  # 블로그 포스트
├── _includes/               # 재사용 가능한 템플릿 조각
├── _layouts/                # 페이지 레이아웃
├── _sass/                   # SCSS 스타일시트
├── assets/                  # 정적 파일 (이미지, CSS, JS)
├── tools/                   # 빌드/배포 스크립트
├── .github/workflows/       # GitHub Actions 워크플로우
├── package.json             # Node.js 의존성
├── Gemfile                  # Ruby gem 의존성
└── README.md               # 프로젝트 설명
```

## 🔗 유용한 링크

- [Jekyll 공식 문서](https://jekyllrb.com/docs/)
- [Chirpy 테마 문서](https://github.com/cotes2020/jekyll-theme-chirpy)
- [Conventional Commits](https://www.conventionalcommits.org/)
- [GitHub Pages 문서](https://docs.github.com/en/pages)

## 📞 도움말

개발 중 문제가 발생하면:

1. 로컬 빌드 테스트: `bundle exec jekyll build`
2. GitHub Actions 로그 확인
3. 이미지 경로와 파일명 확인
4. Ruby/Node.js 버전 호환성 확인

---

*마지막 업데이트: 2025-10-20*