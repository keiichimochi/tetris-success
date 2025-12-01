# tetris-success アーキテクチャ設計

## 概要

このドキュメントはプロジェクトのアーキテクチャ設計を説明します。

## 技術スタック

### フロントエンド
- **フレームワーク**: nextjs
- **状態管理**: React Context / Zustand
- **スタイリング**: Tailwind CSS

### バックエンド
- **フレームワーク**: fastapi
- **認証**: JWT
- **バリデーション**: Pydantic

### データベース
- **DBMS**: sqlite
- **ORM**: SQLAlchemy / Prisma

## ディレクトリ構造

```
tetris-success/
├── frontend/           # フロントエンドアプリケーション
│   ├── src/
│   │   ├── components/ # UIコンポーネント
│   │   ├── pages/      # ページコンポーネント
│   │   ├── hooks/      # カスタムフック
│   │   ├── lib/        # ユーティリティ
│   │   └── types/      # 型定義
│   └── public/         # 静的ファイル
├── backend/            # バックエンドアプリケーション
│   ├── app/
│   │   ├── api/        # APIエンドポイント
│   │   ├── models/     # データモデル
│   │   ├── services/   # ビジネスロジック
│   │   └── core/       # コア機能
│   └── tests/          # テスト
├── docs/               # ドキュメント
└── scripts/            # スクリプト
```

## API設計

RESTful API設計に従います。

### エンドポイント規則
- `GET /api/v1/resources` - リソース一覧取得
- `GET /api/v1/resources/:id` - リソース詳細取得
- `POST /api/v1/resources` - リソース作成
- `PUT /api/v1/resources/:id` - リソース更新
- `DELETE /api/v1/resources/:id` - リソース削除

## セキュリティ

- JWT認証
- CORS設定
- 入力バリデーション
- SQLインジェクション対策
- XSS対策
