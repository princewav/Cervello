

NOME_IN_CODICE=highway 
######################

tag_mysql = "mysql"

routing_key = f"{tag_mysql}.*"
message_routing_key = f"{tag_mysql}.message"

rabbit_name = "highway_out"
exchange = f"{rabbit_name}"
exchange_dlx = f"{rabbit_name}_dlx"
queue_name = f"{rabbit_name}_{tag_mysql}"


message = {
	"requestId": Globals().get_value(key="request_id"),
    "table": table,
    "callback": callback,
    "data": message,
    # "pk": "nome_prikmary_key"
} 

task_name = f"queue_consumer.services.perform_{method}"  # method = lower

header = {
            "expiration": int((datetime.utcnow() + timedelta(days=7)).timestamp())
        }


send_task(
            task_name,
            [
                json.dumps(message),
                header,
            ],
            queue=queue_name_mysql,
            routing_key=message_routing_key_mysql,            
        )

