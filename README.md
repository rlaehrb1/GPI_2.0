# GPI 2.0 Precision Studio

이미지를 넣으면 영어 이미지 프롬프트를 만들어 주는 로컬 웹앱입니다.
OpenAI API Key는 쓰지 않고, ChatGPT/Codex OAuth 또는 Gemini API Key로 사용합니다.

## 빠른 시작

준비물: Node.js/npm

```powershell
git clone <repo-url>
cd GPI_2.0
npm install
npm run dev
```

브라우저에서 엽니다.

```text
http://127.0.0.1:8787
```

ZIP으로 받은 경우에는 압축을 풀고 `GPI_2.0` 폴더에서 PowerShell을 연 뒤 `npm install`, `npm run dev`만 실행하면 됩니다.

## 사용 순서

1. 앱을 엽니다.
2. 상단 중앙에서 인증 방식을 준비합니다.
   - OpenAI: `chat gpt oauth 로그인`
   - Gemini: `gemini api key 입력`
3. 이미지를 넣습니다.
   - 드래그앤드랍
   - `파일` 버튼
   - 이미지 URL 입력
   - 클립보드 이미지/URL 붙여넣기
4. 모델과 추론 옵션을 고릅니다.
5. `생성`을 누릅니다.
6. 결과를 복사하거나 기록에서 다시 불러옵니다.

## 모델

OpenAI OAuth:

- `gpt-5.5`
- `gpt-5.4`
- `gpt-5.4-mini`

OpenAI 추론 강도:

- `low`
- `medium`
- `high`
- `xhigh`

Gemini:

- `gemini-3.5-flash`
- `gemini-3.1-flash-lite`

Gemini Thinking:

- `minimal`
- `low`
- `medium`
- `high`

## 단축키

| 단축키 | 기능 |
|---|---|
| `F1` | 생성 |
| `F5` | 같은 이미지로 재실행 |
| `Ctrl+V` | 이미지 또는 URL 붙여넣기 |
| `Ctrl+C` | 결과 복사 |
| `Esc` | 생성 중단 |

## 로컬 저장 파일

아래 파일은 자동 생성되며 Git에 올리지 않습니다.

```text
.gpi/local.json    # Gemini API Key
.gpi/history.json  # 최근 기록
.gpi/logs.jsonl    # 실행 로그
```

`.gpi/`, `node_modules/`, `dist/`는 `.gitignore`에 포함되어 있습니다.

## 자주 막히는 부분

### `npm`을 찾을 수 없음

Node.js를 설치한 뒤 PowerShell을 새로 열고 확인합니다.

```powershell
node --version
npm --version
```

### 앱 주소가 안 열림

서버를 먼저 실행해야 합니다.

```powershell
npm run dev
```

8787 포트가 막혀 있으면 다른 포트로 실행합니다.

```powershell
$env:PORT=8790
npm run dev
```

그다음 `http://127.0.0.1:8790`을 엽니다.

### OpenAI OAuth가 안 됨

앱에서 `chat gpt oauth 로그인`을 누르고 로그인을 끝낸 뒤, 다시 같은 버튼을 누릅니다.

직접 로그인해야 할 때:

```powershell
npx @openai/codex login
```

### Gemini가 안 됨

`gemini api key 입력`에서 키를 다시 저장하고 `gemini-3.5-flash`로 먼저 테스트합니다.

### 이미지 URL이 안 됨

사이트가 외부 다운로드를 막을 수 있습니다. 이미지를 파일로 저장해서 넣거나, 브라우저에서 이미지를 복사한 뒤 `Ctrl+V`를 사용하세요.

## 점검

```powershell
npm run check
```

빌드까지 성공하면 정상입니다.
