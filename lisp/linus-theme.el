; -*- lexical-binding:t -*-

(deftheme linus
  "My theme.")

(let ((linus-background "#181818")
      (linus-background-alt "#202020")
      (linus-foreground "#E6E6E6")
      (linus-bright "#F2F2F2")
      (linus-gray "#888888")
      (linus-dark-gray "#555555")
      (linus-black "#101010"))
  (custom-theme-set-faces
   'linus

   `(cursor ((t (:background ,linus-bright))))
   `(default ((t (:background ,linus-background
                    :foreground ,linus-foreground))))

   `(font-lock-builtin-face
     ((t (:foreground ,linus-foreground :weight bold))))
   `(font-lock-comment-face
     ((t (:foreground ,linus-gray))))
   `(font-lock-constant-face
     ((t (:foreground ,linus-bright))))
   `(font-lock-doc-face
     ((t (:foreground ,linus-gray))))
   `(font-lock-function-name-face
     ((t (:foreground ,linus-bright :weight bold))))
   `(font-lock-keyword-face
     ((t (:foreground ,linus-foreground))))
   `(font-lock-string-face
     ((t (:foreground ,linus-foreground))))
   `(font-lock-type-face
     ((t (:foreground ,linus-foreground))))
   `(font-lock-variable-name-face
     ((t (:foreground ,linus-foreground))))

   `(linus-important-face
     ((t (:foreground ,linus-bright
           :weight bold
           :underline t))))
   `(linus-note-face
     ((t (:foreground ,linus-foreground
           :weight bold))))
   `(linus-todo-face
     ((t (:foreground ,linus-bright
           :weight bold
           :underline t))))

   `(hl-line
     ((t (:background ,linus-background-alt))))

   `(region
     ((t (:background ,linus-dark-gray
           :foreground ,linus-bright))))
   `(fringe
     ((t (:background ,linus-background
           :foreground ,linus-dark-gray))))
   `(mode-line
     ((t (:background ,linus-black
           :foreground ,linus-foreground
           :box (:line-width 1 :color ,linus-dark-gray)))))
   `(mode-line-inactive
     ((t (:background ,linus-background
           :foreground ,linus-gray
           :box (:line-width 1 :color ,linus-black)))))
   `(minibuffer-prompt
     ((t (:foreground ,linus-bright
           :weight bold))))))
  
(provide-theme 'linus)
