# プロジェクト #1 進捗ログ

## 現在の状態 (2025-08-28 時点)
- S3 バケット + CloudFront (OAC) → Terraform で構築済み
- GitHub OIDC プロバイダ → 作成済み
- IAM ロール (Terraform 用 / SiteSync 用) → 作成済み
  - Terraform 用ロールには S3 backend 用アクセス権を付与済み
  - S3 サイトバケット用ロールには以下を追加済み:
    - s3:GetAccelerateConfiguration
    - s3:GetLifecycleConfiguration
    - s3:GetReplicationConfiguration
    - (必要に応じて s3:GetObjectLockConfiguration, s3:GetEncryptionConfiguration も追加予定)
- GitHub Repository Variables 設定済み:
  - AWS_ACCOUNT_ID
  - AWS_REGION
  - TF_ROLE_ARN
  - SYNC_ROLE_ARN
  - S3_BUCKET
  - CF_DISTRIBUTION_ID
- GitHub Actions:
  - terraform.yml → Plan / Apply が動作するが、一部 S3 読み取り権限不足で修正中
  - site-deploy.yml → 未確認

## 次にやること
- Terraform 用ロールの権限を再チェックして Plan を完全に通す
- Plan 結果 (X to add, Y to change, Z to destroy) を確認
- 必要なら terraform import で既存リソースを state に取り込み
- Apply を main で実行して CI/CD を完成させる
- site-deploy.yml で index.html 更新が自動反映されるかテスト