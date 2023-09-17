interface User {
        name: string,
        email: string,
        age: number
};

enum days {
        monday,
        tuesday,
        wednesday = 22,
        thursday,
        friday,
        saturday,
        sunday
};

function say_hello(name: string) {
        console.log("hello man how are you " + name);
        console.log(`today is ${days.friday}`);
}
