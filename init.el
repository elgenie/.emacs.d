
(setq el-emacs-init-file load-file-name)
(require 'cl)

;; backport user-emacs-directory variable to pre-24 versions of emacs
(unless (boundp 'user-emacs-directory)
  (defvar user-emacs-directory "~/.emacs.d/"
    "Directory beneath which additional per-user
    Emacs-specificfiles are placed. Various programs in Emacs
    store information in this directory. Note that this should
    end with a directory separator. See also
    `locate-user-emacs-file`. "))

;; Packages
(setq marmalade-server "http://marmalade-repo.org/")

(require 'package)
(dolist (source '(
                  ;; FSF only (official)
                  ("gnu" . "http://elpa.gnu.org/packages/")
                  ;; User contributions
                  ("marmalade" . "http://marmalade-repo.org/packages/")
                  ;; Original package.el repo
                  ("elpa" . "http://tromey.com/elpa/")
                  ))
  (add-to-list 'package-archives source t))
(package-initialize)

;; Obtaining packages: see the README for
;; https://github.com/technomancy/emacs-starter-kit
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages
  '(starter-kit
    starter-kit-lisp
    starter-kit-bindings
    starter-kit-js
    smex
    magit
    markdown-mode
    yaml-mode
    marmalade
    yasnippet
    yas-jit ;; load yasnippets on demand
    )
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Customizations
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
