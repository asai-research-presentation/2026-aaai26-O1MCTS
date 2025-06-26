
;; Set custom package directory relative to current directory
(setq package-user-dir (expand-file-name "elpa/" (file-name-directory (or load-file-name buffer-file-name))))
(require 'package)
(package-initialize)
(package-install-file (car argv))
(kill-emacs)
