(clog-repl)

(create-div *body* :content "Hello")

;; Create pattern
;;
;;   html element, panels or other custom elements, use a create-* constructor
;;     the first argument is the parent element
;;
;;   every create-* supports the following names arguments
;;     :style       css styles
;;     :class       css class
;;     :content     the text content of the element
;;
;;     Advanced:
;;     :html-id     a custom html id
;;     :auto-place  auto place the element (default t)
;;                  t       - place new element in DOM at botton of parent
;;                  nil     - create but do not place in DOM
;;                  :bottom - same as t
;;                  :top    - place at top of parent
;;


;; Store the clog object returned and you can perform live actions on it

(defparameter my-div (create-div *body* :content "Hello-2"))

(setf (background-color my-div) :orange)

(setf (text-value my-div) (background-color my-div))

;; parameters can be set and retrieved live using the standard common lisp
;; pattern for variables.

(defparameter a-button (create-button *body* :content "Some Button"))

(set-on-click a-button (lambda (obj)
                         (setf (background-color obj)
                               (rgb (random 255) (random 255) (random 255)))))

;; events are attached using the set-on-* pattern. The function passed, its
;;   parameter is the object itself allowing for reuse of functions for many
;;   clog objects or events. Some events pass additional parameters for
;;   mouse data, keyboard data, etc.

(create-child *body* "<div><button id='mb'>My Button</button></div>")

;; Chuncks of HTML can also be passed using create-child

(defparameter mb-button (attach-as-child *body* "mb" :clog-type 'clog-button))

;; attach-as-child creates new clog objects that are attached my html id
