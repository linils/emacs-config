;; -*- lexical-binding: t; -*-

(global-set-key (kbd "C-c e b") #'eval-buffer)

(set-face-attribute 'default nil
                    :family "Noto Sans Mono"
                    :height 110
                    :weight 'regular)

(setq create-lockfiles nil
      initial-major-mode 'fundamental-mode
      initial-scratch-message nil
      use-dialog-box nil
      use-file-dialog nil
      use-short-answers t
      show-whitespace t
      kill-whole-line t
      confirm-kill-processes nil
      echo-keystrokes 0.1
      tab-always-indent t
      truncate-partial-width-windows nil
      column-number-indicator-zero-based nil
      display-line-numbers-width-start t
      save-inter-program-paste-before-kill t
      ring-bell-function 'ignore
      require-final-newline t
      make-backup-files nil
      delete-auto-save-files t
      scroll-conservatively 101
      custom-file (locate-user-emacs-file "custom.el"))

(setq-default
 indent-tabs-mode nil
 tab-width 4
 select-active-regions nil
 truncate-lines t)

(add-hook 'prog-mode-hook
          (lambda ()
            (setq-local indent-tabs-mode nil)
            (setq-local tab-width 4)))

(add-hook 'c-mode-hook
          (lambda ()
            (setq-local c-basic-offset 4)))

(global-auto-revert-mode 1)
(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose nil)
(tool-bar-mode 0)
(menu-bar-mode 1)
(scroll-bar-mode -1)
(blink-cursor-mode -1)
(column-number-mode 1)
(fido-vertical-mode)


;(add-hook 'prog-mode-hook #'display-line-numbers-mode)
(add-hook 'prog-mode-hook #'hl-line-mode)
(add-hook 'prog-mode-hook #'electric-pair-mode)

(add-to-list 'custom-theme-load-path user-emacs-directory)

(make-directory (expand-file-name "auto-save/" user-emacs-directory) t)
(setq auto-save-file-name-transforms
      `((".*" ,(expand-file-name "auto-save/" user-emacs-directory) t)))

(setq custom-file (locate-user-emacs-file "custom.el"))
(load custom-file :no-error-if-file-is-missing)

(global-set-key (kbd "M-o")
				(lambda ()
				  (interactive)
				  (end-of-line)
				  (open-line 1)
				  (forward-line 1)))

(add-to-list 'display-buffer-alist
             '("\\`\\*\\(Warnings\\|Compile-Log\\)\\*\\'"
               (display-buffer-no-window)
               (allow-no-window . t)))


(global-set-key (kbd "C-x K") #'kill-current-buffer)

(add-to-list 'load-path "~/.emacs.d/lisp")
(require 'odin-mode)

(require 'glsl-mode)
(add-hook 'glsl-mode-hook
          (lambda ()
            (setq-local c-basic-offset 4)
            (setq-local glsl-indent-offset 4)
            (setq-local tab-width 4)
            (setq-local indent-tabs-mode nil)))


(require 'simpc-mode)
(add-to-list 'auto-mode-alist '("\\.[hc]\\(pp\\)?\\'" . simpc-mode))

(add-to-list 'custom-theme-load-path "~/.emacs.d/lisp")
(load-theme 'linus t)
