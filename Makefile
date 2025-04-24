# Makefile for running agent.py with uv and installing uv if needed

.PHONY: run-agent install run-client

install:
	@if ! command -v uv >/dev/null 2>&1; then \
		pip install uv; \
	else \
		echo "uv is already installed"; \
	fi

run-agent:
	PYTHONPATH=. uv run agent

run-client:
	PYTHONPATH=. uv run client --agent http://localhost:10002
