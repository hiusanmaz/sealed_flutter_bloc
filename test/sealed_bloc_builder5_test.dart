import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sealed_unions/sealed_unions.dart';
import 'package:bloc/bloc.dart';
import 'package:sealed_flutter_bloc/sealed_flutter_bloc.dart';

class MockUnion extends Mock
    implements Union5<dynamic, dynamic, dynamic, dynamic, dynamic> {}

class MockBloc extends Mock implements Bloc<dynamic, MockUnion> {}

void main() {
  group('SealedBlocBuilder5', () {
    testWidgets('should throw AssertionError if builder is null',
        (tester) async {
      try {
        await tester.pumpWidget(
          SealedBlocBuilder5<MockBloc, MockUnion, dynamic, dynamic, dynamic,
              dynamic, dynamic>(
            builder: null,
          ),
        );
      } catch (error) {
        expect(error, isAssertionError);
      }
    });
  });
}