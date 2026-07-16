# AGENTS.md

本文件只保存项目维护入口与硬性约束，不承载完整产品或技术方案。

## 开始工作前

1. 必读 [`.local/docs/PROJECT_BLUEPRINT.md`](.local/docs/PROJECT_BLUEPRINT.md)。它是产品范围、架构决策、环境配置、开发流程、版本计划与 Ticket 切分的唯一权威文档。
2. 开发必须对应一个已接受的 Linear Ticket；不要直接从模糊想法开始写代码。
3. 如果实现改变产品边界、数据结构、公开 API、部署方式或安全模型，先更新 Blueprint 中的决策记录，再修改代码。

## 已确定的硬性方向

- 项目名称是 **Inky Hero**；仓库、目录、Docker 镜像等机器可读 slug 统一使用 `inkyhero`。
- 项目是开源、可 self-host 的多用户个人 Memo 与长期记忆系统。
- 初期建设社区，后期运营官方 Cloud；Cloud 同时支持 BYOK 与官方托管 AI Credits。
- Rails 8 单体应用，Hotwire 前端。
- PostgreSQL 是唯一正式支持的数据库；向量能力使用同库的 pgvector，不引入独立向量数据库。
- 开发、测试、Cloud 和 self-host 使用相同数据库能力与同一个应用镜像。
- 用户 API Key 使用 Active Record Encryption；秘密不得提交到仓库。
- AI 的写入、修改、删除和重要记忆变更必须经过明确授权或确认。
- v1 不维护 SQLite 兼容层、微服务、独立前端或多 Agent 系统。

## 文档边界

- 本文件保持短小，只记录入口与不可违反的约束。
- 产品说明、技术细节、安装命令和 Roadmap 只写入 Blueprint 或其明确拆出的专题文档。
- Linear 用于执行状态；项目规划文档用于解释“为什么”和长期约束。两者冲突时先修正文档与 Ticket，再继续开发。
