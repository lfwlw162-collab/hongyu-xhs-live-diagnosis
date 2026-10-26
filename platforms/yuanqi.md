# 腾讯元器适配指南

> 平台能力会变化。本指南基于 2026-10-26 可访问的腾讯元器官方文档整理。

腾讯元器适合创建知识库问答智能体，并进一步连接公众号、企业微信等腾讯生态入口。

官方文档：

- [腾讯元器介绍](https://yuanqi.tencent.com/guide/yuanqi-introduction)
- [文档知识库导入](https://yuanqi.tencent.com/guide/knowledge-manage-document-introduction)

## 配置建议

1. 创建知识库问答或对话式智能体应用；
2. 将 `core/SYSTEM-PROMPT.md` 放入提示词或角色规则；
3. 在知识库管理中导入 `references/` 与 `core/` 下的知识文件；
4. 为知识文件增加“取数、诊断、动态运营、限流、输出”等分类或标签；
5. 测试图片输入和长截图识别；若当前应用不支持可靠识图，要求用户同时上传导出表格或OCR文字；
6. 使用虚构或脱敏数据评测回答效果；
7. 根据业务需要选择发布渠道。

## 知识分类建议

| 分类 | 文件 |
|---|---|
| 取数 | `data-intake.md`、`DATA-CHECKLIST.md` |
| 诊断 | `diagnosis-framework.md` |
| 运营 | `dynamic-operations.md` |
| 限流 | `throttling-checklist.md` |
| 输出 | `report-template.md`、`OUTPUT-TEMPLATE.md` |

## 注意事项

- 系统规则不要只存在知识库中，核心边界必须放在提示词；
- 公开发布前删除测试截图和真实经营数据；
- 腾讯元器支持的文档格式、容量、发布渠道和调用额度以账号当前页面为准；
- 公众号或企业场景要另外核对平台隐私、数据留存与用户授权规则。

