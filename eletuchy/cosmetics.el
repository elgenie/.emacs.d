(defalias 'zb 'color-theme-zenburn)

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
