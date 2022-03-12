let rec list_builder l = match l with
    | h::t -> [h]::list_builder t
    | [] -> []
    ;;
