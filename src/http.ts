/** @noSelfInFile */

declare namespace http {
    type Headers = { [name: string]: string };

    /** @noSelf **/
    interface Handle {
        close(): void;
        readLine(): string;
        readAll(): string;
    }

    function request(url: string, postData?: string, headers?: Headers): Handle
    function get(url: string, headers?: Headers): Handle
    function post(url: string, postData: string, headers?: Headers): Handle
}
