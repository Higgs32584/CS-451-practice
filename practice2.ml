
let rec append2 l1 l2=
    match l1,l2 with
    | [],_ -> l2
    | _,[] -> l1
    | h::t , h1::t1 -> if h < h1 then h :: append2 t l2 else h1 :: append2 l1 t1
    ;;
let rec merge xs ys =
   match xs, ys with
   | [], _ -> ys
   | _, [] -> xs
   | hx :: txs, hy :: tys ->
       if hx < hy then hx :: merge txs ys else hy :: merge xs tys
    ;;

let bob=[[2; 4]; [6; 9]; [7; 8]; [1; 9]; [2; 3]] ;;
let rec merge_pairs xs = match xs with
    | h::h1::t -> merge h h1 :: merge_pairs t
    | h::[]-> xs
    | []->[]
    ;;
let a = merge_pairs bob;;
let print_int_list_list = List.iter (List.iter (Printf.printf "%d ")) a;;


let rec merge_all xs = match xs with
    | h::h1::t -> merge_pairs h h1 :: merge_all t
    ;;
