#!/usr/bin/ruby

# Start writting your code here
class Email
    def initialize(subject, headers)
        @subject = subject
        @headers = headers
    end

    def info()
        width = :subject.length
        puts("#{"Date:".ljust(width+1)}  #{date}")
        puts("#{"From:".ljust(width+1)}  #{from}")
        puts("#{"Subject:".ljust(width+1)}  #{subject}")
    end

    def subject
        @subject
     end

    def date
        @headers[:date]
    end

    def from
        @headers[:from]
    end
end

class Mailbox
    def initialize(name, emails)
        @name = name
        @emails = emails
    end

    def all()
        emails.each do |x|
            x.info()
            puts
        end
    end
    
    def name
        @name
    end

    def emails
        @emails
    end
end

class MailboxTextFormatter
    # fill in this class body
    def initialize(mailbox)
        @mailbox = mailbox
    end

    def format
      str = [
        "<html>",
        head,
        body,
        "</html>"
      ]
      str.join("\n")
    end

    def header
      "<h1>#{mailbox.name}</h1>"
    end

    def thead
      str = "<thead>\n  <th>Date</th>\n  <th>From</th>\n  <th>Subject</th>\n</thead>"
    end
    def tbody
      str = mailbox.emails.map do |email|
        s = "<tr>\n"+
            "  <td>#{email.date}</td>\n"+
            "  <td>#{email.from}</td>\n"+
            "  <td>#{email.subject}</td>\n"+
            "</tr>\n"
        s
      end
      "<tbody>\n#{str.join("\n")}</tbody>"
    end

    def table
      str = [
        "<table>",
        thead,
        tbody,
        "</table>"
      ].join("\n")
    end

    def body
      "<body>\n#{header}\n#{table}\n</body>"
    end

    def head
      "<head>
      <style>
        table {
          border-collapse: collapse;
        }
        td, th {
          border: 1px solid black;
          padding: 1em;
        }
      </style>
    </head>"
    end
    def mailbox
        @mailbox
    end
end

#create email array as in the last exercise
emails = [
  Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous"}),
  Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Dajana"}),
  Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Ariane"}),
  Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Ariane"}),
  Email.new("Re: Homework thdsdjksdjsdkjis week", { :date => "2014-12-02", :from => "Ariane dosldjsoldkj"})
]
#create mailbox as before
mailbox = Mailbox.new("Ruby Study Group", emails)

formatter = MailboxTextFormatter.new(mailbox)
puts formatter.format
