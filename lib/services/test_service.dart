class TestService {
  final int value;

  TestService({required this.value, required String name});

  Future<String> test() async {
    return 'test :  ${value.toString()}';
  }
}
