async function accessToken(r) {
    r.subrequest("/_oauth2_request",
        function (reply) {
            if (reply.status === 200) {
                const response = JSON.parse(reply.responseText);
                if (response.success === true) {
                    r.return(204);
                } else {
                    r.return(401);
                }
            } else {
                r.return(401);
            }
        }
    );

}

export default { accessToken };
