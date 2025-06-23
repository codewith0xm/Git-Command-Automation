#!/bin/bash

# Quick commit and push with message
git_commit_push() {
  git add .
  git commit -m "$1"
  git push
}

# Add all changes
git_add_all() {
  git add .
}

# Commit only
git_commit() {
  git commit -m "$1"
}

# Push current branch
git_push() {
  git push
}

# Pull latest changes
git_pull() {
  git pull
}

# Checkout to a branch
git_checkout() {
  git checkout "$1"
}

# Create and checkout new branch
git_new_branch() {
  git checkout -b "$1"
}

# Delete local branch
git_delete_branch() {
  git branch -d "$1"
}

# Delete remote branch
git_delete_remote_branch() {
  git push origin --delete "$1"
}

# Force push
git_force_push() {
  git push origin "$1" --force
}

# Show log graph
git_log_graph() {
  git log --oneline --graph --all
}

# Stash changes
git_stash_save() {
  git stash save "$1"
}

# Apply latest stash
git_stash_apply() {
  git stash apply
}

# Discard all local changes
git_reset_hard() {
  git reset --hard
}

# Pull with rebase
git_pull_rebase() {
  git pull --rebase
}

# Show current branch
git_current_branch() {
  git rev-parse --abbrev-ref HEAD
}

# Clone repo
git_clone() {
  git clone "$1"
}

# Add remote
git_add_remote() {
  git remote add origin "$1"
}

# Change remote URL
git_change_remote_url() {
  git remote set-url origin "$1"
}

# Fetch all
git_fetch_all() {
  git fetch --all
}

# Show status
git_status() {
  git status
}

# Safe add, commit, push with branch display
git_safe_push() {
  local branch=$(git rev-parse --abbrev-ref HEAD)
  echo "Pushing to branch: $branch"
  git status
  git add .
  git commit -m "$1"
  git push origin "$branch"
}

# Stash, pull latest, pop stash
git_smart_pull() {
  git stash save "Auto stash before pull"
  git pull --rebase
  git stash pop
}

# Create new branch from current, push to remote
git_create_push_branch() {
  git checkout -b "$1"
  git push -u origin "$1"
}

# Hard reset, clean, pull latest from remote
git_force_sync() {
  git fetch --all
  git reset --hard origin/$(git rev-parse --abbrev-ref HEAD)
  git clean -fd
}

# Pull latest, rebase, push
git_update_branch() {
  git pull --rebase
  git push
}

# Batch delete local branches except current
git_cleanup_branches() {
  current=$(git rev-parse --abbrev-ref HEAD)
  git branch | grep -v "$current" | xargs git branch -d
}

# Quick tag and push
git_tag_push() {
  git tag "$1"
  git push origin "$1"
}

# Delete all merged branches except main and current
git_prune_merged() {
  current=$(git rev-parse --abbrev-ref HEAD)
  git branch --merged | grep -vE "(^\*|main|$current)" | xargs git branch -d
}

# Smart rebase onto main
git_rebase_main() {
  git checkout main
  git pull
  git checkout -
  git rebase main
}

# View short status with branch name
git_quick_status() {
  echo "On branch: $(git rev-parse --abbrev-ref HEAD)"
  git status -s
}

# Check remote URL
git_show_remote() {
  git remote -v
}

# Quick amend last commit message
git_amend_message() {
  git commit --amend -m "$1"
}

# Reset to specific commit
git_reset_to_commit() {
  git reset --hard "$1"
}

# View difference from main
git_diff_main() {
  git fetch origin main
  git diff origin/main
}

# Backup current branch to another branch
git_backup_branch() {
  git checkout -b "${1:-backup-$(date +%Y%m%d%H%M%S)}"
}

# Cherry-pick specific commit to current branch
git_cherry_pick() {
  git cherry-pick "$1"
}

# Quick revert specific commit
git_revert_commit() {
  git revert "$1"
}

# Soft reset (keep changes, remove commit)
git_soft_reset() {
  git reset --soft HEAD~1
}

# Show commits in last N days
git_recent_commits() {
  git log --since="$1 days ago" --oneline --graph
}

# Diff between two branches
git_diff_branches() {
  git diff "$1".."$2"
}

# Push all branches
git_push_all() {
  git push --all
}

# Aliases
alias gcp='git_commit_push'
alias ga='git_add_all'
alias gc='git_commit'
alias gp='git_push'
alias gpl='git_pull'
alias gco='git_checkout'
alias gnb='git_new_branch'
alias gdb='git_delete_branch'
alias gdbr='git_delete_remote_branch'
alias gf='git_force_push'
alias glg='git_log_graph'
alias gs='git_status'

alias gsp='git_safe_push'
alias gspull='git_smart_pull'
alias gcpb='git_create_push_branch'
alias gsync='git_force_sync'
alias gupd='git_update_branch'
alias gclean='git_cleanup_branches'
alias gtp='git_tag_push'
alias gprune='git_prune_merged'
alias gremote='git_show_remote'
alias gamend='git_amend_message'
alias gbackup='git_backup_branch'
alias grevert='git_revert_commit'
alias gresoft='git_soft_reset'
alias grecent='git_recent_commits'
alias gdiffb='git_diff_branches'
alias gpushall='git_push_all'

