# GPI 2.0 Precision Studio

GPI 2.0은 이미지를 보고 영어 프롬프트를 만들어 주는 로컬 웹앱입니다.

기존 GPI 1.3의 빠른 작업 방식은 유지하면서, EXE 대신 브라우저에서 쓰는 웹앱으로 바꾼 버전입니다.

- 이미지 드래그앤드랍
- 이미지 파일 선택
- 이미지 URL 입력
- 클립보드 이미지/URL 붙여넣기
- OpenAI ChatGPT OAuth 로그인
- Gemini API Key 입력
- 프롬프트 생성, 복사, 재실행, 기록 저장

OpenAI API Key는 사용하지 않습니다.

---

## 1. 준비물

먼저 아래 프로그램이 설치되어 있어야 합니다.

### 필수

- Node.js
- npm

Node.js를 설치하면 npm도 같이 설치됩니다.

설치 확인:

```powershell
node --version
npm --version
```

둘 다 버전이 나오면 준비 완료입니다.

예:

```text
v22.17.0
11.14.1
```

---

## 2. 다운로드

GitHub에서 받은 경우:

```powershell
git clone <repo-url>
cd GPI_2.0
```

ZIP으로 받은 경우:

1. ZIP 압축을 풉니다.
2. `GPI_2.0` 폴더를 엽니다.
3. 폴더 빈 공간에서 우클릭합니다.
4. `터미널에서 열기` 또는 `PowerShell에서 열기`를 누릅니다.

---

## 3. 처음 한 번만 설치

`GPI_2.0` 폴더에서 아래 명령을 실행합니다.

```powershell
npm install
```

이 작업은 처음 한 번만 하면 됩니다.

설치가 끝나면 `node_modules` 폴더가 생깁니다. 정상입니다.

---

## 4. 실행

개발/일반 사용:

```powershell
npm run dev
```

실행되면 아래 주소를 브라우저에서 엽니다.

```text
http://127.0.0.1:8787
```

앱을 끄고 싶으면 터미널에서 `Ctrl+C`를 누릅니다.

---

## 5. OpenAI ChatGPT OAuth 사용법

OpenAI API Key는 필요 없습니다.

1. 앱 상단 중앙의 `chat gpt oauth 로그인` 버튼을 누릅니다.
2. 로그인 창 또는 터미널 창이 뜨면 OpenAI/Codex 로그인을 진행합니다.
3. 로그인이 끝나면 앱으로 돌아옵니다.
4. 다시 `chat gpt oauth 로그인` 버튼을 누릅니다.
5. 버튼과 상태 표시가 초록색으로 바뀌면 준비 완료입니다.

사용 가능한 OpenAI OAuth 모델:

- `gpt-5.5`
- `gpt-5.4`
- `gpt-5.4-mini`

OpenAI 모델을 사용할 때는 `추론 강도`를 고를 수 있습니다.

- `low`
- `medium`
- `high`
- `xhigh`

기본값은 `medium`입니다.

---

## 6. Gemini 사용법

Gemini는 API Key가 필요합니다.

1. 앱 상단 중앙의 `gemini api key 입력` 버튼을 누릅니다.
2. Gemini API Key를 붙여넣습니다.
3. `저장`을 누릅니다.
4. 버튼과 상태 표시가 초록색으로 바뀌면 준비 완료입니다.

Gemini API Key는 이 컴퓨터의 로컬 파일에만 저장됩니다.

저장 위치:

```text
.gpi/local.json
```

이 파일은 Git에 올라가지 않도록 `.gitignore`에 등록되어 있습니다.

사용 가능한 Gemini 모델:

- `gemini-3.5-flash`
- `gemini-3.1-flash-lite`

Gemini 모델을 사용할 때는 `Gemini Thinking`을 고를 수 있습니다.

- `minimal`
- `low`
- `medium`
- `high`

---

## 7. 이미지 넣는 방법

아래 방법 중 아무거나 사용하면 됩니다.

### 방법 1. 드래그앤드랍

이미지 파일을 앱의 `이미지 놓기` 영역에 끌어다 놓습니다.

### 방법 2. 파일 선택

`파일` 버튼을 누르고 이미지를 선택합니다.

### 방법 3. 이미지 URL

`이미지 URL` 입력칸에 이미지 주소를 붙여넣고 `불러오기`를 누릅니다.

### 방법 4. 클립보드 붙여넣기

이미지를 복사한 뒤 앱 화면에서 `Ctrl+V`를 누릅니다.

이미지 주소를 복사한 경우에도 `Ctrl+V`로 붙여넣을 수 있습니다.

지원 형식:

- `.jpg`
- `.jpeg`
- `.png`
- `.webp`

최대 용량:

```text
20MB
```

큰 이미지는 브라우저에서 자동으로 줄여서 처리합니다.

---

## 8. 프롬프트 생성

1. 이미지를 넣습니다.
2. Provider를 고릅니다.
   - `openai`
   - `gemini`
3. 모델을 고릅니다.
4. 필요하면 키워드를 입력합니다.
5. `생성` 버튼을 누릅니다.

결과는 오른쪽 `결과` 영역에 표시됩니다.

---

## 9. 단축키

| 단축키 | 기능 |
|---|---|
| `F1` | 프롬프트 생성 |
| `F5` | 같은 이미지로 재실행 |
| `Ctrl+V` | 이미지 또는 이미지 URL 붙여넣기 |
| `Ctrl+C` | 결과 프롬프트 복사 |
| `Esc` | 생성 중단 |

---

## 10. 기록

생성된 프롬프트는 최근 20개까지 로컬에 저장됩니다.

저장 위치:

```text
.gpi/history.json
```

기록은 앱 오른쪽 `기록` 영역에서 다시 눌러 볼 수 있습니다.

기록을 지우려면 기록 영역의 휴지통 버튼을 누릅니다.

---

## 11. 빌드해서 실행하기

일반적으로는 `npm run dev`만 써도 됩니다.

배포용 빌드가 필요하면:

```powershell
npm run build
npm start
```

그다음 브라우저에서 엽니다.

```text
http://127.0.0.1:8787
```

---

## 12. 점검 명령

코드가 정상인지 확인:

```powershell
npm run check
```

성공하면 대략 이런 식으로 끝납니다.

```text
✓ built
```

---

## 13. 문제 해결

### `npm` 명령을 찾을 수 없다고 나올 때

Node.js가 설치되지 않았거나 터미널을 다시 열어야 합니다.

해결:

1. Node.js를 설치합니다.
2. PowerShell을 완전히 닫습니다.
3. 다시 PowerShell을 열고 `node --version`을 확인합니다.

### `http://127.0.0.1:8787`이 열리지 않을 때

앱 서버가 실행 중인지 확인합니다.

```powershell
npm run dev
```

이미 다른 프로그램이 8787 포트를 쓰고 있다면 포트를 바꿔 실행할 수 있습니다.

```powershell
$env:PORT=8790
npm run dev
```

그다음 아래 주소를 엽니다.

```text
http://127.0.0.1:8790
```

### OpenAI OAuth가 연결되지 않을 때

1. `chat gpt oauth 로그인` 버튼을 누릅니다.
2. 로그인 창에서 로그인을 끝냅니다.
3. 앱으로 돌아와 다시 `chat gpt oauth 로그인` 버튼을 누릅니다.

그래도 안 되면 PowerShell에서 직접 실행해 봅니다.

```powershell
npx @openai/codex login
```

로그인 후 앱을 다시 실행합니다.

### Gemini가 안 될 때

1. `gemini api key 입력` 버튼을 누릅니다.
2. API Key를 다시 저장합니다.
3. 모델을 `gemini-3.5-flash`로 바꿔 테스트합니다.

### 이미지 URL이 안 불러와질 때

일부 사이트는 외부 다운로드를 막습니다.

해결 방법:

- 이미지를 직접 다운로드해서 파일로 넣기
- 브라우저에서 이미지를 복사한 뒤 `Ctrl+V`
- 다른 이미지 URL 사용

---

## 14. Git에 올리면 안 되는 파일

아래 파일/폴더는 개인 정보나 로컬 실행 결과이므로 Git에 올리지 않습니다.

이미 `.gitignore`에 등록되어 있습니다.

```text
.gpi/
node_modules/
dist/
*.log
```

특히 `.gpi/local.json`에는 Gemini API Key가 들어갈 수 있습니다.

절대 공유하지 마세요.

---

## 15. 폴더 구조

```text
GPI_2.0/
  server/
    index.js        # Express 백엔드
  src/
    App.jsx         # React 앱 화면
    styles.css      # UI 스타일
    main.jsx        # React 시작점
  index.html
  package.json
  README.md
```

---

## 16. 한 줄 요약

처음 받았으면 아래 순서대로 하면 됩니다.

```powershell
npm install
npm run dev
```

브라우저에서 열기:

```text
http://127.0.0.1:8787
```

그다음 앱에서 `chat gpt oauth 로그인` 또는 `gemini api key 입력`을 누르면 됩니다.
