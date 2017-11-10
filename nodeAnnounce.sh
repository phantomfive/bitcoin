curl -X POST -H "Content-Type: application/json" -d '{
	"nodes": ["http://127.0.0.1:5000", "http://127.0.0.1:5002"]
}' "http://localhost:5001/nodes/register"
