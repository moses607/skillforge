#!/usr/bin/env bash
# Pousse le pack GRATUIT vers un repo GitHub public.
# Prérequis : git installé, et soit `gh` (GitHub CLI) connecté, soit le repo déjà créé sur github.com.
set -e
REPO_NAME="skillforge"          # nom du repo
VISIBILITY="public"             # public pour la vitrine

git init -q
git add .
git commit -qm "SkillForge: free pack (9 skills) + catalog, pricing, GTM"
git branch -M main

if command -v gh >/dev/null 2>&1; then
  gh repo create "$REPO_NAME" --"$VISIBILITY" --source=. --remote=origin --push
  echo "OK -> repo créé et poussé via gh."
else
  echo "gh non installé. Crée le repo vide sur github.com (sans README), puis :"
  echo "  git remote add origin https://github.com/TON_USER/$REPO_NAME.git"
  echo "  git push -u origin main"
fi
