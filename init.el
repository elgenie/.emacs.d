
(require 'cl)

(setq marmalade-server "http://marmalade-repo.org/"
      custom-file (expand-file-name "~/.emacs.d/custom.el"))

;; Packages
(require 'package)
(dolist (source '(("marmalade" . "http://marmalade-repo.org/packages/")
                  ("elpa" . "http://tromey.com/elpa/")
                  ("gnu" . "http://elpa.gnu.org/packages/")
                  ))
  (add-to-list 'package-archives source t))
(package-initialize)

;; Obtaining packages: see the README for https://github.com/technomancy/emacs-starter-kit
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

