########################################################################################################################
#!!
#! @description: Generated operation description
#!
#! @input : Generated description
#! @input input_2: Generated description
#! @output output_1: Generated description
#! @result SUCCESS: Operation completed successfully.
#! @result FAILURE: Failure occured during execution.
#!!#
########################################################################################################################

namespace: io.cloudslang.demo

operation:
    name: uuid

    python_action:
      script: |
        import uuid
        uuid = str(uuid.uuid1())


    java_action:
      gav: 'group:artifact:version'
      class_name: Uuid
      method_name: execute

    outputs:
      - output_1

    results:
      - SUCCESS: ${returnCode == '0'}
      - FAILURE