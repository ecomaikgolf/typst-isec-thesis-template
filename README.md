# ISEC Master's Thesis Template

Install with:

```sh
git clone https://github.com/ecomaikgolf/typst-isec-master-thesis-template ~/.local/share/typst/packages/local/isec-master-thesis-template/
```

Start new thesis with the template:

```sh
typst init @local/isec-master-thesis-template:1.0.0 thesis
cd thesis
```

## Typst

### What's Typst?

A modern typesetting system which has:

- Milisecond incremental builds¹
- Subsecond full builds¹
- Multithreaded builds per pagebreak
- Easy rustc-like comiler error messages (and no intermediates!)
- Transparent multiple compiler passes (no more mklatex/makefiles)
- Simple & powerful scripting and syntax
- WebAssembly plugin support (python/js interpreters in your thesis? Yes)

Migrating from LaTeX? Check the [migration guide](https://typst.app/docs/guides/guide-for-latex-users/)

¹: This is obviously not a serious benchmark and depends on the document. But
   it's hella fast trust me

### Quick usage

Start incremental compilations with:

```sh
typst watch thesis.typ
```

then open the generated PDF:

```sh
xdg-open thesis.typ
```

Now edit `thesis.typ` and it will be incrementally built in each save.

Incremental builds are blazingly fast, but regular PDF rendering (on the
viewer) is a bottleneck here. 

Use tinymist with neovim's `:TypstPreview`, VSCode plugin or its CLI:

```
tinymist preview --partial-rendering --host localhost:8080 thesis.typ
```

which uses the browser to do PDF partial renderings and previews will be even
more responsive. No need for running `typst watch` now. It even has features
like cursor sync, click to jump, etc.

## Design

Template closely follows [Maria's LaTeX
Template](https://extgit.isec.tugraz.at/castle/student/templates/master-thesis/-/tree/main/thesis)
design from the institute (with the ISEC renaming).

There's a few differences between the original and the Typst version that won't
be changed as I prefer as it is here. Nothing reallty important, just small
typesetting/design choices. Check the differences
[here](https://github.com/ecomaikgolf/typst-iaik-master-thesis-template/issues?q=is%3Aissue+is%3Aopen+label%3Adiff)

## Samples

![title](https://github.com/user-attachments/assets/62d3eff1-93db-42c7-ae24-8562eea2948e)
![affidavit](https://github.com/user-attachments/assets/b02843dc-507b-4108-9f9f-00a4be13b92e)
![acknowledgements](https://github.com/user-attachments/assets/8ab9dde7-678b-4b59-8a2c-14dc5b0305e2)
![abstract](https://github.com/user-attachments/assets/ca700eb5-3c88-4fef-a62f-c2c6cb81a6a5)
![contents](https://github.com/user-attachments/assets/726115da-81f2-4100-ac3b-014044ba3250)
![text-content](https://github.com/user-attachments/assets/95d90667-b203-4004-bb73-5f4ca5dc7cd0)
![dummy-content](https://github.com/user-attachments/assets/25db8ec5-05a5-43b5-b649-0bbe0eca4459)
![listings-content](https://github.com/user-attachments/assets/527f041f-3f85-447e-bf8e-f4e6059a0242)
![bibliography](https://github.com/user-attachments/assets/9d63d990-9c36-4277-a495-95ad5d4767d3)
![appendix](https://github.com/user-attachments/assets/f4f3173b-ab1b-4291-92b0-0c1ac9427de6)
