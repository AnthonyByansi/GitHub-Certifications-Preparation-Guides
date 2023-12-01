# Lab Exercises for GitHub Actions

Welcome to the lab exercises for GitHub Actions! These exercises are designed to give you hands-on experience with the concepts covered in the GitHub Actions certification. Let's get started!

## Exercise 1: Create a Workflow

In this exercise, you'll create a new workflow on GitHub.

1. Sign in to your GitHub account.
2. Navigate to your repository.
3. Click on the "Actions" tab.
4. Click on "set up a workflow yourself".
5. In the editor, write your workflow.
6. Commit the workflow to your repository.

Here's an example of a simple workflow:

```yaml
name: CI

on: [push]

jobs:
  build:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v2
    - name: Run a one-line script
      run: echo Hello, world!
```

## Exercise 2: Trigger a Workflow

In this exercise, you'll make a change to your repository to trigger the workflow you created.

1. Navigate to your repository.
2. Make a change to a file and commit the change.
3. Go to the "Actions" tab to see your workflow run.

## Exercise 3: Use a Matrix Build

In this exercise, you'll modify your workflow to use a matrix build.

1. Navigate to your workflow file.
2. Modify the workflow to include a strategy matrix. Here's an example:

```yaml
jobs:
  build:
    runs-on: ubuntu-latest
    strategy:
      matrix:
        node: [12, 14, 16]
    steps:
    - uses: actions/checkout@v2
    - name: Use Node.js ${{ matrix.node }}
      uses: actions/setup-node@v1
      with:
        node-version: ${{ matrix.node }}
    - run: npm ci
    - run: npm test
```

3. Commit the changes to your workflow file.

## Exercise 4: Use a Self-Hosted Runner

In this exercise, you'll set up a self-hosted runner and modify your workflow to use it.

1. Follow the instructions in the GitHub Docs to set up a self-hosted runner.
2. Modify your workflow file to use your self-hosted runner:

```yaml
jobs:
  build:
    runs-on: self-hosted
    steps:
    - uses: actions/checkout@v2
    - name: Run a one-line script
      run: echo Hello, world!
```

3. Commit the changes to your workflow file.
