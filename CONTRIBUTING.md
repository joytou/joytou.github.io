# Contributing

## Development
We welcome you to join the development of JOYTOU Blog. This document will help you through the process.

### Before You Start
Please follow the coding style:

- Follow Google JavaScript Style Guide.
- Use soft-tabs with a two space indent.
- Don’t put commas first.

### Workflow
1. Fork joytou/JOYTOU.
2. Clone the repository to your computer and install dependencies.
3. Create a feature branch.
4. Start hacking.
5. Push the branch.
6. Create a pull request and describe the change.

### Notice
- Don’t modify version number in all.
- Your pull request will only get merged when tests passed. Don’t forget to run tests before submission.

## Translating
- Add a new language file in source folder(source folder: `_layouts`, `about`, `archives`, `categories`, `dashboard`, `tags`, `root`).(All lower case)
- Named it as `index.language.html`(all lower case).
- Copy Markdown and template files in source folder to the new language file.
- Add the new language information to `/_data/lang.yml`.
- Copy `en.yml` in `/_data/`to the new language file, and rename to the language name (all lower case).

## Reporting Issues
When you encounter some problems when using JOYTOU Blog, please report it on [GitHub](https://github.com/joytou/JOYTOU/issues) or [Coding](https://coding.net/u/joytou/p/JOYTOU/topic).
