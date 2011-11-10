
;; NOTE: themes should not be placed under eletuchy because emacs
;; starter kit loads all the elisp files under $USERNAME
(add-to-list 'custom-theme-load-path
             (expand-file-name "color-theme-solarized" el-elisp-external-dir))
(add-to-list 'custom-theme-load-path
             (expand-file-name "zenburn" el-elisp-external-dir))
;; (load-theme 'solarized-dark t)
(load-theme 'zenburn t nil)

;; show trailing whitespace ...
(set-face-background 'trailing-whitespace "#900000")
(setq-default show-trailing-whitespace t)

(defun inconsolata-font (size)
  (interactive "p")
  (set-default-font
   (concat "-unknown-Inconsolata-normal-normal-normal-*-"
           (if (stringp size) size
             (if (= 1 size) "16"
               (read-from-minibuffer "Size: ")))
           "-*-*-*-m-0-*-*")))
(defun consolas-font (size)
  (interactive "p")
  (set-default-font
   (concat "-unknown-Consolas-normal-normal-normal-*-"
           (if (stringp size) size
             (if (= 1 size) "16"
               (read-from-minibuffer "Size: ")))
           "-*-*-*-m-0-*-*")))

;; If we don't have XFT, let's at least pick a decent default.
;; Hopefully this won't ever be necessary.
(if (< emacs-major-version 23)
    (ignore-errors
      (set-default-font (concat "-xos4-terminus-medium-r-normal--"
                                "16-160-72-72-c-80-iso8859-1"))))
