#!/bin/bash

# Exit on errors
set -e

echo "Building Jekyll site..."
bundle exec jekyll build

echo "Deploying to gh-pages branch..."
git subtree push --prefix _site origin gh-pages

echo "Deployment complete!"
