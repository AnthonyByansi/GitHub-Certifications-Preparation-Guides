#!/bin/bash

# Create certification folders
for cert in "GitHub-Foundations" "GitHub-Actions" "GitHub-Advanced-Security" "GitHub-Administration"; do
  mkdir "$cert"
  cd "$cert"
  
  # Create certification-specific files
  touch Overview.md Study-Materials.md Practice-Exams.md Study-Guide.md Additional-Resources.md
  
  # Add a simple message to each file
  echo "# $cert Certification" > Overview.md
  echo "## Study Materials" > Study-Materials.md
  echo "## Practice Exams" > Practice-Exams.md
  echo "## Study Guide" > Study-Guide.md
  echo "## Additional Resources" > Additional-Resources.md
  
  cd ..
done
