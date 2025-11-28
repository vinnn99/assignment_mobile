import 'dart:async';

/// Simple Counter BLoC that keeps a single global integer state.
class CounterBloc {
  // Start from 1 so examples in the brief match — e.g. starting number is 1.
  int _value = 1;

  final _controller = StreamController<int>.broadcast();

  // Stream of current value
  Stream<int> get stream => _controller.stream;

  // Current value sync getter
  int get value => _value;

  void _emit() {
    if (!_controller.isClosed) _controller.sink.add(_value);
  }

  // Operations
  void add(int x) {
    _value = _value + x;
    _emit();
  }

  void subtract(int x) {
    _value = _value - x;
    _emit();
  }

  void multiply(int x) {
    _value = _value * x;
    _emit();
  }

  void dispose() {
    _controller.close();
  }
}
