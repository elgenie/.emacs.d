;; The emacs-starter-kit defaults are generally pretty good
;; (for the languages it knows about). Here are some deviations:

;; typing overwrites selected text (pending delete)
(delete-selection-mode t)

;; Interactive Do (http://www.emacswiki.org/cgi-bin/wiki/InteractivelyDoThings)
(setq ido-max-prospects 30 ;; show 30 prospective matches
      ido-ignore-extensions t
      )

;; Search Behavior
(setq case-fold-search t        ;; case insensitive search ...
      search-highlight t        ;; ... with highlighted results
      isearch-highlight t       ;; ... including incremental
      query-replace-highlight t ;; ... and replace
      )

;; --------------------------------------------------------------------------------

;; show trailing whitespace ...
(set-face-background 'trailing-whitespace "#900000")
(setq-default show-trailing-whitespace t)
;; ... and terminate with extreme prejudice
;; (if (fboundp 'delete-trailing-whitespace)
;;     (add-hook 'write-file-hooks 'delete-trailing-whitespace)
;; )

;; handle newlines at the end of files
(setq require-final-newline 'visit-save
      next-line-add-newlines nil)

;; TEMPORARILY COMMENTED OUT
;; (require 'yas-jit)
;; (setq yas/root-directory (concat dotfiles-dir "/snippets"))
;; (yas/jit-load)

;; --------------------------------------------------------------------------------
;; Make modifier+arrow-key work inside ttys
;; (when (member (getenv "TERM") '("linux" "xterm" "screen"))) ;; another option
(when (not window-system)
  (dolist (prefix '("\eO" "\eO1;" "\e[1;"))
    (dolist (m '(("2" . "S-") ("3" . "M-") ("4" . "S-M-") ("5" . "C-")
                 ("6" . "S-C-") ("7" . "C-M-") ("8" . "S-C-M-")))
      (dolist (k '(("A" . "<up>") ("B" . "<down>") ("C" . "<right>")
                   ("D" . "<left>") ("H" . "<home>") ("F" . "<end>")))
        (define-key function-key-map
          (concat prefix (car m) (car k))
          (read-kbd-macro (concat (cdr m) (cdr k)))))
      )
    ))
