#!/bin/bash
set -e

echo "🚀 Initializing development environment..."

# Check dependencies
command -v node >/dev/null 2>&1 || { echo "Node.js is required but not installed."; exit 1; }
command -v python3 >/dev/null 2>&1 || { echo "Python 3 is required but not installed."; exit 1; }


# Frontend setup
echo "📦 Setting up frontend..."
cd frontend
npm install
cd ..

# Backend setup
echo "🐍 Setting up backend..."
cd backend
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
cd ..

echo "✅ Development environment ready!"
echo ""
echo "To start development:"
echo "  Frontend: cd frontend && npm run dev"
echo "  Backend:  cd backend && source venv/bin/activate && uvicorn main:app --reload"
