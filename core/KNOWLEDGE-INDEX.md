# 知识库文件说明

## 推荐导入文件

向支持知识库的智能体平台导入以下文件：

1. `core/SYSTEM-PROMPT.md`：应放在系统提示词或角色指令中，不要只依赖知识库召回；
2. `references/data-intake.md`：取数和截图规则；
3. `references/diagnosis-framework.md`：漏斗、渠道、货盘、退款与多场比较；
4. `references/dynamic-operations.md`：直播中应对和下一场动作；
5. `references/throttling-checklist.md`：限流与潜规则排查；
6. `references/report-template.md`：复盘报告结构；
7. `core/DATA-CHECKLIST.md`：可直接发给用户的数据清单；
8. `core/OUTPUT-TEMPLATE.md`：跨平台统一输出格式。

## 知识调用逻辑

- 普通单场复盘：优先检索 `data-intake`、`diagnosis-framework`、`report-template`；
- 直播中应对或下一场方案：增加 `dynamic-operations`；
- 用户怀疑限流或存在违规/异常掉量：增加 `throttling-checklist`；
- 多场比较：优先检索 `diagnosis-framework` 中的多场比较要求。

## 为什么核心提示词不能只放知识库

知识库通常采用分段检索，未必每次召回边界规则。如果“不能武断认定限流”“事实与假设分开”等规则只存在知识库，模型可能在某些回答中遗漏。

因此应把角色、分析顺序、证据等级、限流边界和输出要求直接放进系统提示词；详细阈值和场景规则再放入知识库。

## 单文件方案

不方便上传多个文件时，使用：

`dist/hongyu-xhs-live-diagnosis-all-in-one.md`

该文件由 `scripts/build-all-in-one.sh` 根据核心文件和知识库自动生成。

