(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
  ;; and `package-pinned-packages`. Most users will not need or want to do this.
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  )


(package-initialize)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   (quote
    ("2ed177de0dfc32a6a32d6109ddfd1782a61bcc23916b7b967fa212666d1aa95c" "6d11f1916de1a827e24b5c4b51ff17e40709e60a9e871d30d2d199fbd8bed0f6" "5fe0df778c929fbb84319e35d77c99c72b49080aad53851bd5e4584cb69174e1" "5d09b4ad5649fea40249dd937eaaa8f8a229db1cec9a1a0ef0de3ccf63523014" "dde8c620311ea241c0b490af8e6f570fdd3b941d7bc209e55cd87884eb733b0e" "76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11" "3380a2766cf0590d50d6366c5a91e976bdc3c413df963a0ab9952314b4577299" "36282815a2eaab9ba67d7653cf23b1a4e230e4907c7f110eebf3cdf1445d8370" "44961a9303c92926740fc4121829c32abca38ba3a91897a4eab2aa3b7634bed4" "819d24b9aba8fcb446aecfb59f87d1817a6d3eb07de7fdec67743ef32194438b" "a61109d38200252de49997a49d84045c726fa8d0f4dd637fce0b8affaa5c8620" "1d079355c721b517fdc9891f0fda927fe3f87288f2e6cc3b8566655a64ca5453" "b3bcf1b12ef2a7606c7697d71b934ca0bdd495d52f901e73ce008c4c9825a3aa" "2c613514f52fb56d34d00cc074fe6b5f4769b4b7f0cc12d22787808addcef12c" "3325e2c49c8cc81a8cc94b0d57f1975e6562858db5de840b03338529c64f58d1" "2f26d251e2b0d11e0a5f16b21785ab42192374259cfe41eed67262869c1b387f" "e6cdd07a8475458edf8dfd8b5cb3d81c6bb9aa0cb8535322c21d2e242dd044ed" "180821795742c64e155841e8f9351b9d818e865d79dfc72f1aeab16b8724c9e4" "f544e09cb6c2a1047a751bcf5623ad70eb45981847b1c673263ce7de4858ae6b" "390af3f30c5d5b76739983cf8b85c8bbd04a46ac1488b11d150dec565ba82f55" "01f9cd70f7741dc1c6c0e7f35d0bff6203b46fa9127d60fd82a481af012f1854" "fd15fcbdfbc2980e83e73fafdec04dcafd29ca14adb207fd5b8585a4c4af359e" "7db04ec97febeb281a38b64b1d492aae15b7e91df22231037b4893c450ac8149" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "0141fea4ffa9c1fa02834b8681bdddac1b5e7e2bfce6b3c77c5cf0fc604ee8e3" "9fcc7f1f4c90b6cd8507984c1628061d6c3f7cf0307777da25aa1ef4b11e1d91" "7de0917b4064219c0580397495d47b89a5f93d76724504d0ea8d2eea83542167" "1b27e3b3fce73b72725f3f7f040fd03081b576b1ce8bbdfcb0212920aec190ad" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "1bdc49116a77e52aaea740cd8e54b93e0bae6c0895dcc36d5c8d1a493e89c78d" "d2a14f85e1ba5b28433b96e4628444a4c6a2334368ddc2d568b06eb631492681" "cb49de022f924fee5bee2425a874009b99ce8d7ee76f84227446d037fb4298d3" "8426618fcc55f670f45b04f146933ae23caa1faad603a380e7a348660fd225ab" default)))
 '(fci-rule-color "#405A61")
 '(hl-todo-keyword-faces
   (quote
    (("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2aa198")
     ("PROG" . "#268bd2")
     ("OKAY" . "#268bd2")
     ("DONT" . "#d70000")
     ("FAIL" . "#d70000")
     ("DONE" . "#86dc2f")
     ("NOTE" . "#875f00")
     ("KLUDGE" . "#875f00")
     ("HACK" . "#875f00")
     ("TEMP" . "#875f00")
     ("FIXME" . "#dc752f")
     ("XXX+" . "#dc752f")
     ("\\?\\?\\?+" . "#dc752f"))))
 '(inhibit-startup-screen t)
 '(jdee-db-active-breakpoint-face-colors (cons "#073642" "#268bd2"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#073642" "#859900"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#073642" "#56697A"))
 '(objed-cursor-color "#dc322f")
 '(package-selected-packages
   (quote
    (ayu-theme base16-theme danneskjold-theme doom-themes spacemacs-theme cmake-mode eglot cuda-mode clang-format helm helm-gtags rtags rtags-xref dockerfile-mode docker magit powerline elsa elpy multiple-cursors airline-themes elisp-slime-nav slime org gnu-elpa-keyring-update spaceline)))
 '(pdf-view-midnight-colors (quote ("#b2b2b2" . "#262626")))
 '(ring-bell-function (quote ignore))
 '(rustic-ansi-faces
   ["#002b36" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#839496"])
 '(vc-annotate-background "#002b36")
 '(vc-annotate-color-map
   (list
    (cons 20 "#859900")
    (cons 40 "#959300")
    (cons 60 "#a58e00")
    (cons 80 "#b58900")
    (cons 100 "#bc7407")
    (cons 120 "#c35f0e")
    (cons 140 "#cb4b16")
    (cons 160 "#cd4439")
    (cons 180 "#d03d5d")
    (cons 200 "#d33682")
    (cons 220 "#d63466")
    (cons 240 "#d9334a")
    (cons 260 "#dc322f")
    (cons 280 "#ba3f41")
    (cons 300 "#994d54")
    (cons 320 "#775b67")
    (cons 340 "#405A61")
    (cons 360 "#405A61")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(require 'org)
(setq org-src-fontify-natively t)

(setq make-backup-files nil) ; stop creating backup files

(global-linum-mode 1)


(global-set-key
 (kbd "C-c m c") 'mc/edit-lines)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; (tool-bar-mode)

;; removes menu bar from emacs window
(elpy-enable)

(require 'linum)

(global-linum-mode t)

;; add additional space after line number column
(setq linum-format "%d ")

(if (file-directory-p "~/source/repos/llvm-project")
    (progn
        (setq load-path
            (cons (expand-file-name "~/source/repos/llvm-project/llvm/utils/emacs")
                  load-path))
        (require 'llvm-mode)
        (require 'tablegen-mode)
        ))

;; setup c++ development environment
(require 'eglot)
(add-to-list 'eglot-server-programs '((c++-mode c-mode) "clangd" "-j=8"))
(add-hook 'c-mode-hook 'eglot-ensure)
(add-hook 'c++-mode-hook 'eglot-ensure)
(put 'scroll-left 'disabled nil)

;; setup powerline
(require 'spaceline)
(if (window-system) (spaceline-all-the-icons-theme)
  (spaceline-spacemacs-theme))


