import 'package:flutter/material.dart';
import 'package:tandangi/design_system/color/semantic/colors.dart';

abstract final class AppTypography {
  // ── Title ──────────────────────────────────────────
  // L · 28 · Bold · 160%
  static const titleL = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 28,
    fontWeight: FontWeight.w700,
    height: 1.6,
    letterSpacing: -0.56, // 28 * -0.02
    color: SemanticColors.textPrimary,
  );

  // M · 26 · Bold · 160%
  static const titleM = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 26,
    fontWeight: FontWeight.w700,
    height: 1.6,
    letterSpacing: -0.52, // 26 * -0.02
    color: SemanticColors.textPrimary,
  );

  // S · 24 · Bold · 160%
  static const titleS = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 1.6,
    letterSpacing: -0.48, // 24 * -0.02
    color: SemanticColors.textPrimary,
  );

  // ── Body ───────────────────────────────────────────
  // XL · 18 · 160%
  static const bodyXLRegular = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 18,
    fontWeight: FontWeight.w400,
    height: 1.6,
    letterSpacing: -0.36, // 18 * -0.02
    color: SemanticColors.textPrimary,
  );
  static const bodyXLMedium = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 18,
    fontWeight: FontWeight.w500,
    height: 1.6,
    letterSpacing: -0.36,
    color: SemanticColors.textPrimary,
  );
  static const bodyXLSemiBold = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.6,
    letterSpacing: -0.36,
    color: SemanticColors.textPrimary,
  );

  // L · 16 · 160%
  static const bodyLRegular = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.6,
    letterSpacing: -0.32, // 16 * -0.02
    color: SemanticColors.textPrimary,
  );
  static const bodyLMedium = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.6,
    letterSpacing: -0.32,
    color: SemanticColors.textPrimary,
  );
  static const bodyLSemiBold = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.6,
    letterSpacing: -0.32,
    color: SemanticColors.textPrimary,
  );

  // M · 14 · 160%
  static const bodyMRegular = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.6,
    letterSpacing: -0.28, // 14 * -0.02
    color: SemanticColors.textPrimary,
  );
  static const bodyMMedium = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.6,
    letterSpacing: -0.28,
    color: SemanticColors.textPrimary,
  );
  static const bodyMSemiBold = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.6,
    letterSpacing: -0.28,
    color: SemanticColors.textPrimary,
  );

  // S · 12 · 150%
  static const bodySRegular = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.5,
    letterSpacing: -0.24, // 12 * -0.02
    color: SemanticColors.textPrimary,
  );
  static const bodySMedium = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.5,
    letterSpacing: -0.24,
    color: SemanticColors.textPrimary,
  );
  static const bodySSemiBold = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 12,
    fontWeight: FontWeight.w600,
    height: 1.5,
    letterSpacing: -0.24,
    color: SemanticColors.textPrimary,
  );

  // ── Button ─────────────────────────────────────────
  // XL · 18 · SemiBold · 160%
  static const buttonXL = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.6,
    letterSpacing: -0.36,
    color: SemanticColors.textPrimary,
  );

  // L · 16 · SemiBold · 160%
  static const buttonL = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.6,
    letterSpacing: -0.32,
    color: SemanticColors.textPrimary,
  );

  // M · 14 · SemiBold · 160%
  static const buttonM = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.6,
    letterSpacing: -0.28,
    color: SemanticColors.textPrimary,
  );

  // S · 12 · SemiBold · 150%
  static const buttonS = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 12,
    fontWeight: FontWeight.w600,
    height: 1.5,
    letterSpacing: -0.24,
    color: SemanticColors.textPrimary,
  );

  // ── Label ──────────────────────────────────────────
  // L · 16 · Medium · 160%
  static const labelL = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.6,
    letterSpacing: -0.32,
    color: SemanticColors.textPrimary,
  );

  // M · 14 · Medium · 160%
  static const labelM = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.6,
    letterSpacing: -0.28,
    color: SemanticColors.textPrimary,
  );

  // S · 12 · Medium · 150%
  static const labelS = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.5,
    letterSpacing: -0.24,
    color: SemanticColors.textPrimary,
  );
}
