# ViewController_LifeCycle

## ViewController 생명주기의 정의
- 앱을 동작하다보면 화면 이동이 다양하게 이루어지는 것을 확인할 수 있습니다. 예를 들면, 로그인 버튼을 눌러서 다음 화면으로 이동시킨다던지, 다음 버튼을 눌러서 다음 화면의 리스트를 볼 수 있게 한다던지 등
- ViewController 내부에는 이처럼 뷰가 생성되고, 다른 화면으로 이동하게 하며 뷰가 나타났다가 사라졌다가 하는 그러한 주기가 존재하는데 이것들을 ViewController의 생명주기라고 합니다.

// ViewController의 Life Cycle은 총 6가지로 이루어져 있습니다.
// 1) viewDidLoad()
// 뷰가 처음 메모리에 로드될 때에 (뷰가 화면에 "처음" 나타날 때) 호출되는 메소드입니다.
// 뷰가 화면에 "처음" 나타난 이후로는 더 이상 호출되지 않으므로
// 보통 앱의 초기화면을 설정할 때에 사용되는 메소드입니다.

// 2) viewWillAppear()
// 뷰가 나타나기 전에 호출되는 메소드입니다. 곧 다음 뷰가 나타날 것이라고 알리는 것입니다.
// 예를 들어, 1번 뷰컨트롤러와 2번 뷰 컨트롤러가 있다고 가정하겠습니다.
// 1번 뷰 컨트롤러에서 2번 뷰 컨트롤러로 넘어가고자 다음 버튼을 누르면
// 2번 뷰 컨트롤러 내부의 viewWillAppear()가 호출이 됩니다. 2번 뷰 컨트롤러의 뷰가 곧 등장할 것이기 때문입니다.
// 반대로 2번 뷰 컨트롤러에서 다시 1번 뷰 컨트롤러로 넘어가고자 할 때에는
// 1번 뷰 컨트롤러 내부의 viewWillAppear()가 호출이 됩니다. 1번 뷰 컨트롤러의 뷰가 곧 등장할 것이기 때문입니다.

// viewDidLoad와 무슨 차이가 있느냐면 viewDidLoad는 뷰가 메모리에 로드될 때 (뷰가 화면에 "처음" 나타날 때)만 호출되는 메소드이고
// viewWillAppear()는 어떤 뷰이든지 그냥 나타나기만 하면 호출된다는 차이가 있습니다.
// 그러니까 viewDidLoad()는 단 한 번 호출되고, viewWillAppear는 뷰가 나타날 때마다 호출됩니다.

// 3) viewDidAppear()
// 뷰가 나타난 후에 호출되는 메소드입니다.

// 4) viewWillDisappear()
// 뷰가 사라지기 전에 호출되는 메소드입니다. 지금 현재 뷰가 곧 사라질 것이라고 알리는 것입니다.
// 예를 들어, 1번 뷰컨트롤러와 2번 뷰 컨트롤러가 있다고 가정하겠습니다.
// 1번 뷰 컨트롤러에서 2번 뷰 컨트롤러로 넘어가고자 다음 버튼을 누르면
// 1번 뷰 컨트롤러 내부의 viewWillDisappear()가 호출이 됩니다. 1번 뷰 컨트롤러의 뷰가 곧 2번 뷰 컨트롤러로 넘어가 사라질 것이기 때문입니다.
// 반대로 2번 뷰 컨트롤러에서 다시 1번 뷰 컨트롤러로 넘어가고자 할 때에는
// 2번 뷰 컨트롤러 내부의 viewWillDisappear()가 호출이 됩니다. 2번 뷰 컨트롤러의 뷰가 곧 1번 뷰 컨트롤러로 넘어가 사라질 것이기 때문입니다.

// 5) viewDidDisappear()
// 뷰가 사라진 후에 호출되는 메소드입니다.

// 6) loadView()
// 뷰가 메모리에 로드되기 전에 뷰를 만드는 곳입니다.
// 뷰 컨트롤러의 기존 뷰를 다른 뷰로 교체할 수 있는 장소입니다.
// 뷰가 만들어진 후, viewDidLoad()가 실행됩니다.