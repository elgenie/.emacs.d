;; --------------------------------------------------------------------------------
;;   System Specific File: for eletuchy-mac MBP

(setq org-directory "~/Dropbox/Org")
(setq org-mobile-directory "~/Dropbox/MobileOrg")
(setq org-agenda-files (quote ("~/Dropbox/Org/todo.org"
			       "~/Dropbox/Org/projects.org")))
(setq org-default-notes-file "~/Dropbox/Org/notes.org")

(if (and (daemonp) (locate-library "edit-server"))
    (progn
      (require 'edit-server)
      (edit-server-start)))
