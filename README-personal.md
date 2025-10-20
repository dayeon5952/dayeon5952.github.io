# 다뿡의 블로그 (dayeon5952.github.io)

[![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-Live-brightgreen)](https://dayeon5952.github.io)
[![Jekyll](https://img.shields.io/badge/Jekyll-4.4+-red)](https://jekyllrb.com/)
[![Ruby](https://img.shields.io/badge/Ruby-3.0+-red)](https://www.ruby-lang.org/)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

개발자 다뿡의 기술 블로그입니다. 프론트엔드, 백엔드, 그리고 개발 관련 다양한 주제를 다룹니다.

🔗 **블로그 주소**: [https://dayeon5952.github.io](https://dayeon5952.github.io)

## 📚 주요 카테고리

- **Frontend**: React, Vue, JavaScript, TypeScript, HTML/CSS
- **Backend**: Node.js, Python, 데이터베이스
- **정보처리기사**: 자격증 관련 정리
- **SQL**: 데이터베이스 및 쿼리 최적화
- **패키지 매니저**: npm, yarn, pnpm 등

## 🛠️ 기술 스택

- **정적 사이트 생성기**: Jekyll 4.4+
- **테마**: [Chirpy](https://github.com/cotes2020/jekyll-theme-chirpy)
- **호스팅**: GitHub Pages
- **CI/CD**: GitHub Actions
- **언어**: Ruby 3.0+, Node.js 18+

## 🚀 개발 환경 설정

### 필수 요구사항

- Ruby 3.0 이상
- Node.js 14.0 이상
- Git

### 로컬 실행

```bash
# 저장소 클론
git clone https://github.com/dayeon5952/dayeon5952.github.io.git
cd dayeon5952.github.io

# 의존성 설치
bundle install
npm install

# 개발 서버 실행
./tools/run.sh
```

자세한 설정 방법은 [DEVELOPMENT.md](DEVELOPMENT.md)를 참고하세요.

## 📝 포스트 작성 가이드

### 파일명 규칙

```
YYYY-MM-DD-[카테고리]-제목.markdown
```

### Front Matter 예시

```yaml
---
title: "[Frontend] 제목"
date: 2025-10-20 13:40:27 +09:00
categories: [Frontend]
tags: [JavaScript, React]
---
```

### 이미지 사용

```markdown
![이미지 설명](/assets/img/post/이미지파일명.jpg)
```

## 🔄 배포 과정

1. **로컬에서 작성**: `_posts/` 디렉토리에 마크다운 파일 작성
2. **빌드 테스트**: `bundle exec jekyll build`로 로컬 빌드 확인
3. **커밋**: Conventional Commits 규칙에 따라 커밋
4. **푸시**: `git push origin main`
5. **자동 배포**: GitHub Actions가 자동으로 빌드 및 배포

## 📊 블로그 통계

- **Google Analytics**: 방문자 추적
- **네이버 서치어드바이저**: 검색 엔진 최적화
- **SEO 최적화**: 검색엔진 친화적 구조

## 🤝 기여하기

블로그의 오타나 개선사항을 발견하시면 이슈나 풀 리퀘스트로 기여해주세요!

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/improvement`)
3. Commit your changes (`git commit -m 'feat: add improvement'`)
4. Push to the branch (`git push origin feature/improvement`)
5. Open a Pull Request

## 📞 연락처

- **이메일**: dayeon5952@gmail.com
- **GitHub**: [@dayeon5952](https://github.com/dayeon5952)
- **블로그**: [https://dayeon5952.github.io](https://dayeon5952.github.io)

## 📄 라이선스

이 프로젝트는 MIT 라이선스 하에 배포됩니다. 자세한 내용은 [LICENSE](LICENSE) 파일을 참고하세요.

---

💡 **팁**: 개발 환경 설정이나 블로그 사용법에 대한 자세한 정보는 [DEVELOPMENT.md](DEVELOPMENT.md) 문서를 확인하세요!