;; ########### START OF set package archives ############

;; Add MELPA to the list of repositories
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

;; ########### END of Set package archives ############


;; Installing "use-package" package if not installed already
(require 'package)
(setq package-enable-at-startup nil)
(package-initialize)


(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package)
  )

(eval-when-compile
  (require 'use-package))
;; End of installing "use-package" package


;; ################## START OF PACKAGE INSTALLATION AND CONFIGURATION ################

;; Provides completion for many languages
(use-package company
  :ensure t
  :config
  (global-company-mode))


;; Enable LSP support for many languages
(use-package lsp-mode
  :ensure t
  :commands lsp
  :hook ((python-mode . lsp)
	 (javascript-mode . lsp)
	 (typescript-mode . lsp)
	 (json-mode . lsp)
	 (markdown-mode . lsp)
	 (yaml-mode . lsp)
	 ;; add more languages here
	 )
  :config
  (setq lsp-prefer-flymake nil))

;; Use lsp-ui for better integration
(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode)

;; ################## END OF PACKAGE INSTALLATION AND CONFIGURATION #########

; Custom file which emacs can edit
(setq custom-file "~/.emacs.d/emacs.custom.el")

; To enable it, remove -1
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(column-number-mode)

;; Disable emacs splash screen
(setq inhibit-startup-screen t)

;; Display the line numbers on the left side
(global-display-line-numbers-mode)

;; Open emacs GUI in fullscreen/maximized mode
(add-to-list 'default-frame-alist '(fullscreen . maximized))

; The below is for font size
(set-face-attribute 'default nil :family "Monaco" :height 170)

(global-font-lock-mode 1)

; This is for evil mode => Vim motions
(require 'evil)
(evil-mode 1)
