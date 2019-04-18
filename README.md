# GitHub PR Opener

When you first push a branch to GitHub, it returns a message similar to the following:

```
Counting objects: 637, done.
Delta compression using up to 8 threads.
Compressing objects: 100% (372/372), done.
Writing objects: 100% (637/637), 393.08 KiB | 3.85 MiB/s, done.
Total 637 (delta 393), reused 384 (delta 237)
remote: Resolving deltas: 100% (393/393), completed with 72 local objects.
remote:
remote: Create a pull request for 'branchname' on GitHub by visiting:
remote:      https://github.com/username/reponame/pull/new/branchname
remote:
To github.com:username/reponame.git
```

This repository includes code examples of how to parse this output and open the URL on Mac OS X.

## Languages

- Bash
- Perl
- Rust
- JavaScript
