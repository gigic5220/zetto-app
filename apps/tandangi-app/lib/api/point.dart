import 'dart:math' as math;

class CleanScoreCalculator {
  static double nutrientScore({required double intake, required double recommended}) {
    final tolerance = math.max(5.0, recommended * 0.1); // T
    final upperLimit = recommended * 2 + tolerance; // 2R + T

    // A. 거의 섭취하지 않음
    if (intake <= tolerance) {
      return 0.0;
    }

    // B. 권장량에 가까워질수록 점수 증가
    if (intake < recommended - tolerance) {
      final minX = tolerance;
      final maxX = recommended - tolerance;
      return ((intake - minX) / (maxX - minX)) * 100;
    }

    // C. 권장량 근처는 100점
    if (intake <= recommended + tolerance) {
      return 100.0;
    }

    // D. 과다 섭취 시 점수 감소
    if (intake < upperLimit) {
      final minX = recommended + tolerance;
      final maxX = upperLimit;
      return (1 - ((intake - minX) / (maxX - minX))) * 100;
    }

    // E. 매우 과다함
    return 0.0;
  }

  static int cleanScore({required double carbIntake, required double proteinIntake, required double fatIntake, required double carbRecommended, required double proteinRecommended, required double fatRecommended}) {
    final carbScore = nutrientScore(intake: carbIntake, recommended: carbRecommended);

    final proteinScore = nutrientScore(intake: proteinIntake, recommended: proteinRecommended);

    final fatScore = nutrientScore(intake: fatIntake, recommended: fatRecommended);

    return ((carbScore + proteinScore + fatScore) / 3).round();
  }
}

// 사용 예시

// final score = CleanScoreCalculator.cleanScore(
//   carbIntake: 100,
//   proteinIntake: 150,
//   fatIntake: 50,
//   carbRecommended: 100,
//   proteinRecommended: 150,
//   fatRecommended: 50,
// );

// 결과: 100