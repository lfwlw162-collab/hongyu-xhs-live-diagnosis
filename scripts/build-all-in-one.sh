#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "$0")/.." && pwd)"
output="$repo_root/dist/hongyu-xhs-live-diagnosis-all-in-one.md"
temp_file="$(mktemp)"
trap 'rm -f "$temp_file"' EXIT

files=(
  "core/SYSTEM-PROMPT.md"
  "core/DATA-CHECKLIST.md"
  "core/OUTPUT-TEMPLATE.md"
  "references/data-intake.md"
  "references/diagnosis-framework.md"
  "references/dynamic-operations.md"
  "references/throttling-checklist.md"
  "references/report-template.md"
)

{
  printf '# 红域小红书直播复盘诊断 AI：单文件完整知识包\n\n'
  printf '> 本文件由 `scripts/build-all-in-one.sh` 自动生成。请勿直接修改生成文件。\n\n'
  printf '## 使用方法\n\n'
  printf '将本文件上传给支持附件的 AI，并明确告诉它：请把文件中的“全平台核心提示词”作为本次对话的工作规则，使用其余章节作为诊断知识库。随后上传千帆截图或表格。\n\n'

  for relative_path in "${files[@]}"; do
    printf '\n---\n\n'
    printf '<!-- source: %s -->\n\n' "$relative_path"
    sed -n '1,$p' "$repo_root/$relative_path"
    printf '\n'
  done
} > "$temp_file"

mv "$temp_file" "$output"
trap - EXIT
printf 'Built %s\n' "$output"

