---
title: Learnings
---

Since bin/exhibition_cli is not a Ruby file, we add the following shebang sequence so our operating system knows to interpret the file with Ruby.

```bash
#!/usr/bin/env ruby
```

Users will not want to run the gem through Ruby interpreter explicitely, but rather through bash.
Yet, by default, the exhibition_cli file will only have read and write permissions, and not exucutable permissions.

```bash
cd bin
ls -lah
-rw-r--r--@  1 Dominic  staff    41B 18 Oct 19:54 exhibition_cli
```

We can use the `chmod` command to add these permissions

```bash
chmod +x exhibition_cli
ls -lah
-rwxr-xr-x@  1 Dominic  staff    41B 18 Oct 19:54 exhibition_cli
```

Now we can run the exhibition_cli directly, `./exhibition_cli`


---


In MVC architecture, controllers are responsible for business logic or user interaction.
