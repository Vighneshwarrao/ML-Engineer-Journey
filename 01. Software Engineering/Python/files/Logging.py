import logging
logging.basicConfig(level=logging.DEBUG,format="%(asctime)s - %(levelname)s - %(name)s - %(message)s",
                    filename="app.log")

logger=logging.getLogger(__name__)

logger.info("Starting the program")

a,b=map(int,input("Enter the numbers: ").split(" "))

logger.info("Input numbers are %d , %d",a,b)

if a==0 or b==0:
    logger.warning("Might cause an error if division is performed")
    try:
        res=a/b
        logger.info("Divison result: %d",res)
    except Exception as e:
        logger.exception(e)



