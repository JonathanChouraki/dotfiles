(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)

;; register files in lisp directory
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
(package-install 'use-package))

(use-package railscasts-theme
     :ensure t
     :config
     (load-theme 'railscasts t))

;; Essential settings.
(setq inhibit-splash-screen t
      inhibit-startup-message t
      inhibit-startup-echo-area-message t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(show-paren-mode 1)

(require 'init-evil)
