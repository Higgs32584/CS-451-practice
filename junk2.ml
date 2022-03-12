let rec len l = match l with 
| []-> 0
| _::t -> 1 + len t
;;
let rec talin n l = match n,l with
    | 0,_-> l
    | _,[]-> []
    | n, h::t -> talin (n-1) t
    ;;
let l=[1;2;3;4];;
open Printf
let a = talin 0 l
let () = List.iter (printf "%d ") a
