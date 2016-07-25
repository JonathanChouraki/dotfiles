(defun my/evil-config ()
  "my evil configuration"
    ;; Make escape quit everything, whenever possible.
    ;(define-key evil-normal-state-map [escape] 'keyboard-quit)
    ;(define-key evil-visual-state-map [escape] 'keyboard-quit)
    ;(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
    ;(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
    ;(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
    ;(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
    ;(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
    (define-key evil-normal-state-map (kbd "gl") 'windmove-right)
    (define-key evil-normal-state-map (kbd "gh") 'windmove-left)
    (define-key evil-normal-state-map (kbd "gk") 'windmove-up)
    (define-key evil-normal-state-map (kbd "gj") 'windmove-down))


(defun my/evil-leader-config ()
  "my evil leader configuration"
    (evil-leader/set-leader ",")
    (evil-leader/set-key "s" 'split-window-right)
    (evil-leader/set-key "h" 'split-window-below))

(use-package evil-leader
    :ensure t
    :config
    (global-evil-leader-mode)
    (my/evil-leader-config))

(use-package evil
  :ensure t
  :config
  (evil-mode 1)
  (my/evil-config)

  (use-package evil-surround
    :ensure t
    :config
    (global-evil-surround-mode))

  (use-package evil-indent-textobject
    :ensure t))

(provide 'init-evil)
