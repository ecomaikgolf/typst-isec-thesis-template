# ISEC Master's Thesis Template

Quickstart (CLI):

```sh
typst init @preview/definitely-not-isec-thesis:2.0.1 thesis
```

Quickstart (WebIDE):

- [Create Document](https://typst.app/app?template=definitely-not-isec-thesis&version=2.0.0)
- [Homepage](https://typst.app/universe/package/definitely-not-isec-thesis)

> [!NOTE]
> If you are an ISEC or TUGraz employee and think that `isec-thesis` or
> `tugraz-thesis` fits more, I would need an approval to allocate the name :)

Tested typst version: `0.13.1`.

Need some slides? Check out the sibling package [definitely-not-isec-slides](https://github.com/ecomaikgolf/typst-isec-slides-template)

## Typst

### What's Typst?

A modern typesetting system which has:

- Milisecond incremental (memoized) builds¹
- Subsecond full builds¹
- Multithreaded builds per pagebreak
- Easy rustc-like compiler error messages (and no intermediates!)
- Transparent multiple compiler passes (no more mklatex/makefiles)
- Simple & powerful scripting and syntax
- WebAssembly plugin support (python/js interpreters in your thesis? Sure)

Migrating from LaTeX? Check the [migration guide](https://typst.app/docs/guides/guide-for-latex-users/)

¹: This is obviously not a serious benchmark and depends on the document. But
   it's fast trust me

### Quick usage

Start incremental compilations with:

```sh
typst watch thesis.typ
```

then open the generated PDF:

```sh
xdg-open thesis.pdf
```

Now edit `thesis.typ` and it will be incrementally built in each save.

Incremental builds are blazingly fast, but regular PDF rendering (on the
viewer) is a bottleneck here. 

Use tinymist with neovim's `:TypstPreview` (or VSCode plugin), which uses the
browser to do PDF partial renderings and previews will be even more responsive.
No need for running `typst watch` now. It even has features like cursor sync,
click to jump, etc.

## Design

Template closely follows [Maria's LaTeX
Template](https://extgit.isec.tugraz.at/castle/student/templates/master-thesis/-/tree/main/thesis)
design from the institute.

There's a few differences between the original and the Typst version that won't
be changed as I prefer as it is here. Nothing reallty important, just small
typesetting/design choices. Check the differences
[here](https://github.com/ecomaikgolf/typst-iaik-master-thesis-template/issues?q=is%3Aissue+is%3Aopen+label%3Adiff)

## Samples

![title](https://github.com/user-attachments/assets/62d3eff1-93db-42c7-ae24-8562eea2948e)
![affidavit](https://github.com/user-attachments/assets/b02843dc-507b-4108-9f9f-00a4be13b92e)
![acknowledgements](https://github.com/user-attachments/assets/8ab9dde7-678b-4b59-8a2c-14dc5b0305e2)
![abstract](https://github.com/user-attachments/assets/ca700eb5-3c88-4fef-a62f-c2c6cb81a6a5)
![kurzfassung](https://github.com/user-attachments/assets/ffde8e2d-d3d5-45bd-a188-b4c6b9b5175d)
![contents](https://github.com/user-attachments/assets/6edf6084-2f88-4b61-966d-eec6af2ae403)
![text-content](https://github.com/user-attachments/assets/95d90667-b203-4004-bb73-5f4ca5dc7cd0)
![dummy-content](https://github.com/user-attachments/assets/25db8ec5-05a5-43b5-b649-0bbe0eca4459)
![listings-content](https://github.com/user-attachments/assets/527f041f-3f85-447e-bf8e-f4e6059a0242)
![notation](https://github.com/user-attachments/assets/030cc805-4745-42f7-b404-6f00a66c8442)
![acronyms](https://github.com/user-attachments/assets/96199ddf-4929-4948-b431-78a0d84d431f)
![bibliography](https://github.com/user-attachments/assets/f5afef77-4897-466b-8f38-1a92fc2f8b26)
![appendix](https://github.com/user-attachments/assets/c6e2b758-bb9d-4808-a0cb-3386e5aba9d2)

## License `src/assets/tuglogo.svg`

According to Wikipedia:

> This logo image consists only of simple geometric shapes or text. It does not
> meet the threshold of originality needed for copyright protection, and is
> therefore in the public domain. [...]

https://en.m.wikipedia.org/wiki/File:TU_Graz.svg
