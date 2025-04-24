# ADK Agent Workshop

This project contains:
- An **ADK Agent** (Expense Reimbursement agent)
- A **CLI Client** for interacting with the agent

## Prerequisites

- Python 3.12+
- [UV](https://docs.astral.sh/uv/)
- API Key for Google Gemini/GenAI

## Setup

1. **Clone the repo and set up your environment:**
    ```bash
    git clone git@github.com:AgentWorkshop/sample-agent-single.git
git@github.com:AgentWorkshop/a2a.git
    cd a2a
    ```

2. **Add your API key to `.env`:**
    ```bash
    echo "GOOGLE_API_KEY=your_api_key_here" > .env
    ```

3. **Install dependencies and UV (if needed):**
    ```bash
    make install
    ```

## Running the Agent

```bash
make run-agent
```
Runs the agent server using `uv`.

## Running the Client

```bash
make run-client
```
Runs the CLI client, which connects to the agent at `http://localhost:10002` by default.

## Project Structure

- `agent.py` — Main agent logic
- `client/` — CLI client code and dependencies
- `common/` — Shared logic between agent and client
- `Makefile` — Useful commands for development
