curl -X POST -H "Content-Type: application/json" -d '{
 "sender": "d4ee26eee15148ee92c6cd394edd974e",
 "puzzle": "7 2 + =",
 "amount": 5
}' "http://localhost:5000/transactions/new"
