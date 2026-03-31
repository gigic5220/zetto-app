# Makefile for managing versioning in a monorepo structure

# 타겟

# 도움말
help:
	@echo "사용 가능한 명령어:"
	@echo "  make help  - 도움말 표시"
	@echo "  make git_hooks  - git hooks 설정"
	@echo "  make add_controller <path/to/~~_page.dart>  - controller 3파일 생성"
	@echo "  make ac <path/to/~~_page.dart>             - 위와 동일 (축약)"
	@echo ""


# 버전 증가
bump:
	@bash ./scripts/bump.sh

git_hooks:
	cp -f ./scripts/prepare-commit-msg .git/hooks/prepare-commit-msg
	chmod +x .git/hooks/prepare-commit-msg

add_controller:
	@bash ./scripts/add_controller.sh $(filter-out $@,$(MAKECMDGOALS))

ac:
	@bash ./scripts/add_controller.sh $(filter-out $@,$(MAKECMDGOALS))

# Swallow extra goals (e.g., the positional path) so make doesn't error
%:
	@:


.PHONY: help bump bootstrap	bs generate generate-% update_profiles add_controller ac
