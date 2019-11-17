
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(unless (package-installed-p 'nord-theme)
  (package-refresh-contents)
  (package-install 'nord-theme))

(use-package which-key
  :ensure t
  :init
  (which-key-mode))

;; Disabling some defaults
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(global-visual-line-mode)
(setq-default tab-width 4)
(global-set-key (kbd "M-t") 'indent-for-tab-command)


;;(global-set-key (kbd "TAB") 'tab-to-tab-stop)
;;(add-to-list 'default-frame-alist '(fullscreen . maximized))
;;(add-to-list 'default-frame-alist '(height . 45))
;;(add-to-list 'default-frame-alist '(width . 180))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#32302F" "#FB4934" "#B8BB26" "#FABD2F" "#83A598" "#D3869B" "#17CCD5" "#EBDBB2"])
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#657b83")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (nord)))
 '(custom-safe-themes
   (quote
	("a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "bf390ecb203806cbe351b966a88fc3036f3ff68cd2547db6ee3676e87327b311" "aaffceb9b0f539b6ad6becb8e96a04f2140c8faa1de8039a343a4f1e009174fb" "f153e8ed90e4d79cf2c61560da2b3091d2f3b94da42aaddc707012be4608cf52" default)))
 '(fci-rule-color "#eee8d5")
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
	(solarized-color-blend it "#fdf6e3" 0.25)
	(quote
	 ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#586e75")
 '(highlight-tail-colors
   (quote
	(("#eee8d5" . 0)
	 ("#B4C342" . 20)
	 ("#69CABF" . 30)
	 ("#69B7F0" . 50)
	 ("#DEB542" . 60)
	 ("#F2804F" . 70)
	 ("#F771AC" . 85)
	 ("#eee8d5" . 100))))
 '(hl-bg-colors
   (quote
	("#DEB542" "#F2804F" "#FF6E64" "#F771AC" "#9EA0E5" "#69B7F0" "#69CABF" "#B4C342")))
 '(hl-fg-colors
   (quote
	("#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3")))
 '(hl-paren-colors (quote ("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900")))
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
	("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(package-selected-packages
   (quote
	(lua-mode company-lsp cquery company-web spaceline ace-window avy lsp-mode sudoku emmet-mode web-mode flycheck rainbow-delimiters nlinum-relative perspective eyebrwose eyebrowse hackernews nd4rd md4rd nov evil evil-collecton evil-collection which-key use-package ranger pdf-tools org-bullets ivy evil-leader darktooth-theme)))
 '(pdf-view-display-size (quote fit-page))
 '(pos-tip-background-color "#36473A")
 '(pos-tip-foreground-color "#FFFFC8")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#eee8d5" 0.2))
 '(term-default-bg-color "#fdf6e3")
 '(term-default-fg-color "#657b83")
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
	((20 . "#dc322f")
	 (40 . "#c8805d801780")
	 (60 . "#bec073400bc0")
	 (80 . "#b58900")
	 (100 . "#a5008e550000")
	 (120 . "#9d0091000000")
	 (140 . "#950093aa0000")
	 (160 . "#8d0096550000")
	 (180 . "#859900")
	 (200 . "#66aa9baa32aa")
	 (220 . "#57809d004c00")
	 (240 . "#48559e556555")
	 (260 . "#392a9faa7eaa")
	 (280 . "#2aa198")
	 (300 . "#28669833af33")
	 (320 . "#279993ccbacc")
	 (340 . "#26cc8f66c666")
	 (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
	(unspecified "#fdf6e3" "#eee8d5" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#657b83" "#839496")))
 '(xterm-color-names
   ["#eee8d5" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#073642"])
 '(xterm-color-names-bright
   ["#fdf6e3" "#cb4b16" "#93a1a1" "#839496" "#657b83" "#6c71c4" "#586e75" "#002b36"]))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "DAMA" :family "Hack")))))

;; Highlight the Current Line
(when window-system (global-hl-line-mode t))

;; evil-mode configuration
(unless (package-installed-p 'evil)
  (package-refresh-contents)
  (package-install 'evil))

(unless (package-installed-p 'evil-leader)
  (package-refresh-contents)
  (package-install 'evil-leader))

(use-package evil
  :ensure t
  :init
  (setq evil-want-keybinding nil)
  :config
  (evil-set-initial-state 'pdf-view-mode 'normal)
  (evil-mode 1)
  (use-package evil-leader
    :ensure t
    :config
    (global-evil-leader-mode)
    (setq evil-leader/no-prefix-mode-rx '("doc-view-mode"))
    (evil-leader/set-leader "<SPC>")
    (evil-leader/set-key
      "<SPC>" 'execute-extended-command
      "bk" 'kill-buffer
      "bl" 'ibuffer
      "bs" 'switch-to-buffer
      "bw" 'save-buffer
      "ff" 'find-file
      "fr" 'ranger
	  "fd" 'dired-jump
      "pk" 'persp-kill
      "pn" 'persp-next
      "pp" 'persp-prev
      "ps" 'persp-switch
      "sc" 'q4/board-overview
      "sr" 'md4rd
      "sh" 'hackernews
      "wa" 'delete-other-windows
      "wd" 'delete-window
      "wh" 'evil-window-left
      "wj" 'evil-window-down
      "wk" 'evil-window-up
      "wl" 'evil-window-right
	  "ws" 'evil-window-split
      "wu" 'split-window-horizontally
      "wi" 'split-window-vertically
      "wo" 'ace-window
	  "w=" 'balance-windows
      )))

(unless (package-installed-p 'evil-collection)
  (package-refresh-contents)
  (package-install 'evil-collection))

(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))

  
;; Dired Ranger
(unless (package-installed-p 'ranger)
  (package-refresh-contents)
  (package-install 'ranger))

(use-package ranger
  :ensure t
  :config
  (setq ranger-cleanup-eagery t)
  (setq ranger-show-hidden nil)
  (setq ranger-preview-file nil)
  )

;; Ivy
(unless (package-installed-p 'ivy)
  (package-refresh-contents)
  (package-install 'ivy))

(use-package ivy
  :ensure t
  :config
  (define-key ivy-minibuffer-map (kbd "RET") 'ivy-alt-done)
  (ivy-mode 1))

;; Org Bullets
(unless (package-installed-p 'org-bullets)
  (package-refresh-contents)
  (package-install 'org-bullets))

(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook 'org-bullets-mode))


	;; persperctive for workspaces in emacs
	(unless (package-installed-p 'perspective)
	(package-refresh-contents)
	(package-install 'perspective))

	(use-package perspective
	:ensure t
	:config
	(persp-mode 1))

	;; electric pair mode for matching parens
	(add-hook 'prog-mode-hook 'electric-pair-mode)

	;; rainbow delimiters for a feature I liked from vs code
	(unless (package-installed-p 'rainbow-delimiters)
	(package-refresh-contents)
	(package-install 'rainbow-delimiters))

	(use-package rainbow-delimiters
	:ensure t
	:config
	(add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

	;; ERC configuration



	;; Flycheck mode for syntax checkingin emacs
	(unless (package-installed-p 'flycheck)
	(package-refresh-contents)
	(package-install 'flycheck))

	(use-package flycheck
	:ensure t
	:config
	(global-flycheck-mode))

	;; Flyspell configuring flyspell mode for spellcheck in text modes

	;; Web mode for web development with emacs
	(unless (package-installed-p 'web-mode)
	(package-refresh-contents)
	(package-install 'web-mode))

	(use-package web-mode
	:ensure t
	:config
	(add-hook 'web-mode-hook
			  (lambda ()
				(setq web-mode-css-indent-offset 2)))
	(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
	(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode)))

	;; emmet mode for shortcuts in emacs
	(unless (package-installed-p 'emmet-mode)
	(package-refresh-contents)
	(package-install 'emmet-mode))

	(use-package emmet-mode
	:ensure t
	:config
	(add-hook 'web-mode-hook 'emmet-mode)
	(define-key emmet-mode-keymap (kbd "TAB") 'emmet-expand-line))

	;; js2 mode for editing javascript files
	(unless (package-installed-p 'js2-mode)
	(package-refresh-contents)
	(package-install 'js2-mode))

	(use-package js2-mode
	:ensure t
	:config
	(add-to-list 'auto-mode-alist '("\\.js?\\'" . js2-mode)))

	;; Adding Company Mode to emacs
	(unless (package-installed-p 'company)
	(package-refresh-contents)
	(package-install 'company))

	(use-package company
	:ensure t
	:config
	(add-hook 'after-init-hook 'global-company-mode)
	(setq company-idle-delay 0.9))

	;; Adding YAsnippet
	(unless (package-installed-p 'yasnippet)
	(package-refresh-contents)
	(package-install 'yasnippet))

	(use-package yasnippet
	:ensure t
	)

	;; adding lsp mode
	(unless (package-installed-p 'lsp-mode)
	(package-refresh-contents)
	(package-install 'lsp-mode))

	(use-package lsp-mode
	:ensure t
	)
	;; emmet mode for web dev
	(unless (package-installed-p 'emmet-mode)
	(package-refresh-contents)
	(package-install 'emmet-mode))

	(use-package emmet-mode
	:ensure t
	)

	(unless (package-installed-p 'avy)
	(package-refresh-contents)
	(package-install 'avy))

	(unless (package-installed-p 'ace-window)
	(package-refresh-contents)
	(package-install 'ace-window))

	(use-package ace-window
	:ensure t
	:config
	(setq aw-keys '(?j ?k ?l ?\; ?h ?a ?s ?d ?f ?g)))
	

	(unless (package-installed-p 'spaceline)
	(package-refresh-contents)
	(package-install 'spaceline))

(require 'spaceline-config)
(spaceline-emacs-theme)

(unless (package-installed-p 'company-web)
  (package-refresh-contents)
  (package-install 'company-web))

(use-package company-web
  :ensure t)

(unless (package-installed-p 'cquery)
  (package-refresh-contents)
  (package-install 'cquery))

(defun cquery//enable ()
  (condition-case nil
	  (lsp)
	(user-error nil)))


;; Lua Mode for Editiong Lua
(unless (package-installed-p 'lua-mode)
  (package-refresh-contents)
  (package-install 'lua-mode))

(use-package lua-mode
  :ensure t)

;; Adding flyspell to all text modes
(add-hook 'text-mode-hook 'flyspell-mode)

;; Dired Settings

;; Hide Dot Files
;;(setq-default dired-omit-files-p t)
;;(setq dired-omit-files (concat dired-omit-files "\\|^\\..+$"))


