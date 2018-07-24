# docker-ubuntu
## 2. 기본 명령어와 디렉토리 계층구조

### 2.8 환경 변수와 셸 변수

- 셸 변수 : 셸 변수들은 스크립트의 값들을 추적하는데 유용하고, 일부 셸 변수들은 셸의 동작을 제어하기도 한다.

```sh
$ STUFF = blah
$ echo $STUFF
>> blah
```



- 환경변수 : 셸 변수와 비슷하나, 셸에 한정된 변수가 아니다. 유닉스 시스템의 모든 프로세스들은 환경변수 저장소를 갖고 있다.
  운영체제가 셸에 속해있는 모든 환경 변수들을 해당 셸이 실행하는 프로그램으로 전달한다.
  하지만 실행하는 명령문에서 셸 변수들을 참조할 수는 없다.

셸 변수를 환경변수로 바꿀 수 있다.

```sh
$ STUFF = blah
$ export STUFF
```

### 2.9 명령어 path

특수 환경변수, 명령어의 위치를 찾으려 할 때, 셸이 검색하는 시스템 디렉터리 목록

> ls 명령어를 실행할 때, 셸은 ls 프로그램을 위해 PATH에 열거된 디렉토리를 검색한다.
>
> 경로의 구성요소들은 (:)를 통해서 분리되어 나타난다.

### 2.12 텍스트 편집 프로그램

vi 는 터미널 윈도우에서 표준 터미널 I/O 인터페이스를 사용하여 동작한다.

GUI는 자체 윈도우를 시작하여 자체 인터페이스를 제공한다.

### 2.14.1 표준 오류

표준 출력을 리다이렉트 해도 터미널에 출력이 노출되는 경우가 있는데 이를 **표준 오류(standard error -stderr)** 이라고 한다.

```sh
$ ls /ffffff > f
```

아래 처럼 실행하면 f는 비어있고 표준 오류는 터미널에 출력된다.

이를 막고 싶다면, `2>`를 이용한다.

```sh
$ ls /fffffff > f 2> e
```

숫자 2는 **셸이 수정하는 스트림 ID**를 의미한다.

- 1은 표준 출력(디폴트)
- 2는 표준 오류

를 나타낸다.

`>&`를 사용하면 표준 출력과 표준 오류를 동일한 장소로 리다이ㄹㄱ트한다.

```sh
ls /ffffffff > f 2>&1
```

### 2.16.4 백그라운드 프로세스

보통 셸에서 유닉스 명령을 실행하면, 프로그램이 실행을 마칠 때 까지 셸 프롬프트로 다시 돌아오지 않는다. 그러나 셸로 부터 프로세스를 분리하는 `&`  기호와 함게 백그라운드에서 실행하도록 만들 수 있다.

```sh
$ gunzip bigfile.gz &
```

위의 명령어를 실행하면 백그라운드에서 압축을 푼다.

